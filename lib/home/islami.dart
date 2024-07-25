import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/home/tabs/ahadith_tab.dart';
import 'package:islami/home/tabs/quran_tab.dart';
import 'package:islami/home/tabs/radio_tab.dart';
import 'package:islami/home/tabs/sepha_tab.dart';
import 'package:islami/home/tabs/settings_tab.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  static const String routeName = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ Image.asset("assets/image/bg3.png",),
        Scaffold(
        appBar: AppBar(
          title: Text("اسلامي",
               ),
      
        ),
        body:tabs[selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex=index;
                setState(() {
                });
              },
              iconSize: 30,

              items: [
            BottomNavigationBarItem( icon:ImageIcon(AssetImage("assets/image/moshaf_blue.png")),label: "القران"),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/image/sebha.png")),label: "سبحه"),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/image/radio.png")),label: "راديو"),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/image/ahadith.png")),label: "أحاديث"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "الاعدادات"),


          ])
        ),
    ],);
  }
  List<Widget> tabs = [
    QuranTab() ,
    SephaTab(),
    RadioTab(),
    AhadithTab(),
    SettingsTab(),];
}


