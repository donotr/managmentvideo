import 'package:flutter/material.dart';
import 'package:video_managment/config/theme/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:video_managment/presentation/providers/discover_provider.dart';
import 'package:video_managment/presentation/screen/discover_screen.dart';


void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider( create: (_) => DiscoverProvider())


    ],
    child: MaterialApp(
      title: 'AppVideos',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      home:  const DiscoverScreen(),
    ),
    ); 
    
    /*MaterialApp(
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
    );*/
  }
}