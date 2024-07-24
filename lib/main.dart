import 'package:flutter/material.dart';
import 'package:islami/home/islami.dart';
import 'package:islami/sura_details.dart';

import 'hadith_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      routes: {
HomeScreen.routeName : (context) => HomeScreen(),
        SuraDetails.routeName : (context) => SuraDetails(),
        HadithDetails.routeName : (context) => HadithDetails(),
      },
      initialRoute:HomeScreen.routeName ,
    );
  }
}
