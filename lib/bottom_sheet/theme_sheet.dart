import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/my_provider.dart';

class ThemeSheet extends StatelessWidget {
  const ThemeSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(height: MediaQuery.of(context).size.height * 0.2,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            InkWell(
            onTap:  (){provider.changeTheme(ThemeMode.light);
            Navigator.pop(context);},

        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
Text("light".tr(),style: TextStyle(color: provider.appTheme==ThemeMode.light?
    Colors.white:Colors.black,
                      fontFamily: "ElMessiri",
                      fontWeight: FontWeight.w600,
                      fontSize:35
                  ),),

             provider.appTheme == ThemeMode.dark? SizedBox() :  Icon( Icons.done,size: 30,color: provider.appTheme==ThemeMode.light?
             Colors.black:Colors.white,)
              ],
            ),),
            SizedBox(height: 20,),
        InkWell(
          onTap: (){provider.changeTheme(ThemeMode.dark);
          Navigator.pop(context);},
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
 Text("dark".tr(),style: TextStyle(
                      fontFamily: "ElMessiri",
                      fontWeight: FontWeight.w600,
                      fontSize:35,color: provider.appTheme==ThemeMode.light?
 Colors.black:Colors.white,
                  ),),
                provider.appTheme == ThemeMode.light? SizedBox() : Icon( Icons.done,size: 30,color: provider.appTheme==ThemeMode.light?
                Colors.black:Colors.white,)
                // Icon( Icons.done,size:30)
              ],
            ),)
          ],),
      ),
    );
  }
}
