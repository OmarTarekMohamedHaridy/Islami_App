import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/home/tabs/ahadith_tab.dart';
import 'package:islami/home/tabs/quran_tab.dart';
import 'package:islami/home/tabs/radio_tab.dart';
import 'package:islami/home/tabs/sepha_tab.dart';
import 'package:islami/home/tabs/settings_tab.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:provider/provider.dart';

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
    var pro = Provider.of<MyProvider>(context);
    return Stack(
      children:[ Image.asset(
        pro.appTheme==ThemeMode.light ?
        "assets/image/bg3.png"
        :
        "assets/image/bg_dark.png"
        ,fit: BoxFit.cover,width: double.infinity,height: double.infinity,),
        Scaffold(
        appBar: AppBar(
          title: Text("islami".tr(),style: TextStyle(color: pro.appTheme==ThemeMode.light? Colors.black:Colors.white),
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
            BottomNavigationBarItem( icon:ImageIcon(AssetImage("assets/image/moshaf_blue.png")),label: "quran".tr()),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/image/sebha.png")),label: "sebha".tr()),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/image/radio.png")),label: "radio".tr()),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/image/ahadith.png")),label: "ahadeth".tr()),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "settings".tr()),


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


