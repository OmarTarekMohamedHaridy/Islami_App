import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../bottom_sheet/lang_sheet.dart';
import '../../bottom_sheet/theme_sheet.dart';
import '../../provider/my_provider.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(
          "theme".tr(),
          style: TextStyle(
            fontFamily: "ElMessiri",
            fontWeight: FontWeight.w600,
            fontSize: 25,
          ),
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(

                context: context,
                builder: (context) {
                  return ThemeSheet();
                },
                isScrollControlled: true,
                backgroundColor: provider.appTheme==ThemeMode.light?
                Color(0xffB7935F):Color(0xffFACC1D),);
          },
          child: Container(
            margin: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  width: 2,
                  color: provider.appTheme==ThemeMode.light?
                  Color(0xffB7935F):Color(0xffFACC1D),
                )),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                provider.appTheme==ThemeMode.dark ?
                      "dark".tr() : "light".tr()  ,
                style: TextStyle(
                  fontFamily: "ElMessiri",
                  fontWeight: FontWeight.w600,
                  fontSize: 35,
                ),

              ),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          "language".tr(),
          style: TextStyle(
            fontFamily: "ElMessiri",
            fontWeight: FontWeight.w600,
            fontSize: 25,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(

                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return LangSheet();
                },
                backgroundColor: provider.appTheme==ThemeMode.light?
                Color(0xffB7935F):Color(0xffFACC1D),);
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  width: 2,
                  color:provider.appTheme==ThemeMode.light?
                  Color(0xffB7935F):Color(0xffFACC1D),
                )),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(context.locale ==Locale("en") ?
                "english".tr() :  "arabic".tr() ,
                style: TextStyle(
                  fontFamily: "ElMessiri",
                  fontWeight: FontWeight.w600,
                  fontSize: 35,
                ),

              ),
            ),
          ),
        ),
      ]),
    );
  }
}
