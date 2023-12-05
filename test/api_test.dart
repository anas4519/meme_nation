import 'package:flutter_test/flutter_test.dart';
import 'package:meme_app/services/apis.dart';
void main(){
  test('Test API',() async{
    final response = await API.getMemes();
    print(response.data!.memes.toString());
    expect(response.success,true);
  });

  
}