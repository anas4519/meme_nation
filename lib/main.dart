import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meme_app/app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

