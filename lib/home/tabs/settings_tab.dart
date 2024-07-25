import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Container(margin: EdgeInsets.only(top: 30),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),border: Border.all(width: 2,color: Color(0xffB7935F),)),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text("Light", style: TextStyle(
              fontFamily: "ElMessiri",
              fontWeight: FontWeight.w600,
              fontSize:35,
            ),  textAlign: TextAlign.left,),
          ),
        ),
        SizedBox(height: 50,),
        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),border: Border.all(width: 2,color:Color(0xffB7935F),)),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text("Arabic", style: TextStyle(
              fontFamily: "ElMessiri",
              fontWeight: FontWeight.w600,
              fontSize:35,
            ),  textAlign: TextAlign.left,),
          ),
        ),



      ]),
    );
  }
}
