import 'package:flutter/material.dart';
import 'package:shopping/pages/cartPage.dart';
import 'package:shopping/pages/home_page.dart';
import 'package:shopping/pages/item_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping site',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    routes: {
      '/': (context)=> HomePage(),
      'cartPage' : (context)=> Cartpage(),
      'itemPage' : (context)=> ItemPage(),



    },
    );
  }
}