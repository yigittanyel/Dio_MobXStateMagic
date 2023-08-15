import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:vp_app/PostData/view/post_view.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: PostView(),
        debugShowCheckedModeBanner: false);
  }
}
