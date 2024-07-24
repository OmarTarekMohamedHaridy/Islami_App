import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 167),
            child: Image.asset("assets/image/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png"),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 57),
        child: Text("اذاعه القران الكريم ",  style: TextStyle(
          fontFamily: "ElMessiri",
          fontWeight: FontWeight.w600,
          fontSize: 25,
        ),
          textAlign: TextAlign.center,),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 57),
        child: Image.asset("assets/image/Group 5.png"),
      ),

    ]);
  }
}
