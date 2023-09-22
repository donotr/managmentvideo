import 'package:flutter/material.dart';
import 'package:video_managment/config/theme/app_theme.dart';


void main()=> runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppVideos',
      debugShowCheckedModeBanner: false,
      theme:AppTheme().getTheme(),
      home:Scaffold(
        appBar: AppBar(title: const Text('Material App Bar Videos'),
        ),
        body: const Center(
          child: Text('Hola mundo'),
        ),
        ),
    );
  }
}