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
        Scaffold(backgroundColor: Colors.transparent,
        appBar: AppBar(backgroundColor: Colors.transparent,centerTitle: true,
          title: Text("اسلامي",
              style: TextStyle(
                color: Color(0xff242424),
                fontFamily: "ELMessiri",
                fontSize: 30,
                fontWeight: FontWeight.w700,
              )),
      
        ),
        body:tabs[selectedIndex],
          bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.shifting,
            currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex=index;
                setState(() {

                });
              } ,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              selectedItemColor: Colors.black,
             unselectedItemColor: Colors.white24,
              iconSize: 30,

            backgroundColor: Color(0xffB7935F),
              items: [
            BottomNavigationBarItem(backgroundColor: Color(0xffB7935F), icon:ImageIcon(AssetImage("assets/image/moshaf_blue.png")),label: "القران"),
            BottomNavigationBarItem(backgroundColor: Color(0xffB7935F),icon:ImageIcon(AssetImage("assets/image/sebha.png")),label: "سبحه"),
            BottomNavigationBarItem(backgroundColor: Color(0xffB7935F),icon:ImageIcon(AssetImage("assets/image/radio.png")),label: "راديو"),
            BottomNavigationBarItem(backgroundColor: Color(0xffB7935F),icon:ImageIcon(AssetImage("assets/image/ahadith.png")),label: "أحاديث"),
            BottomNavigationBarItem(backgroundColor: Color(0xffB7935F),icon: Icon(Icons.settings),label: "الاعدادات"),


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


