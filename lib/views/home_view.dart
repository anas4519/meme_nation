import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:meme_app/services/apis.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:url_launcher/url_launcher.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MemeNation",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: API.getMemes(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.custom(
              gridDelegate: SliverQuiltedGridDelegate(
                crossAxisCount: 4,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                repeatPattern: QuiltedGridRepeatPattern.inverted,
                pattern: [
                  const QuiltedGridTile(2, 2),
                  const QuiltedGridTile(1, 1),
                  const QuiltedGridTile(1, 1),
                  const QuiltedGridTile(1, 2),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                (context, index) {
                  final meme = snapshot.data!.data!.memes![index];
                  return InkWell(
                    onTap: () => launchUrl(Uri.parse(meme.url!)),
                    child: Stack(
                      children: [
                        Card(
                          child: CachedNetworkImage(
                            imageUrl: meme.url!,
                            fit: BoxFit.contain,
                            placeholder: (context, url) => const SizedBox.shrink(
                              child: CircularProgressIndicator(),
                            ),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                        Positioned(
                        bottom: 0,  
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.black.withOpacity(0.2),
                          child: Text(meme.name!
                        )),
                  
                        )
                        
                      ],
                    ),
                  );
                },
                
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

