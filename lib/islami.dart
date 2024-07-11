import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
static const String routeName = "Home" ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Islami",style: TextStyle(color: Colors.black),),),) ;
  }
}
