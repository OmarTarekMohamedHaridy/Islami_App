import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/my_provider.dart';

class LangSheet extends StatelessWidget {
  const LangSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(height: MediaQuery.of(context).size.height * 0.2,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
          InkWell(
            onTap: (){
context.setLocale(Locale("en"));
            },
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "english".tr(),style: TextStyle(

                    fontFamily: "ElMessiri",
                    fontWeight: FontWeight.w600,
                    fontSize:35,color: context.locale==Locale("en")
                    ?Colors.white:Colors.black,
                ),),
 context.locale==Locale("en")?   Icon( Icons.done,size: 30,color: provider.appTheme==ThemeMode.light?
 Colors.black:Colors.white):SizedBox()
              ],
            ),
          ),
            SizedBox(height: 20,),
            InkWell(
              onTap:()
    {
      context.setLocale(Locale("ar"));
    } ,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("arabic".tr(),style: TextStyle(color: context.locale==Locale("ar")
                      ?Colors.white:Colors.black,
                fontFamily: "ElMessiri",
                fontWeight: FontWeight.w600,
                fontSize:35,
              ),),
                  context.locale==Locale("en")? SizedBox(): Icon( Icons.done,size: 30,color: provider.appTheme==ThemeMode.light?
                  Colors.black:Colors.white)

                ],
              ),
            ),
        ],),
      ),
    );
  }
}
