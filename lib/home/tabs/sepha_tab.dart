
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SephaTab extends StatefulWidget {
  SephaTab({super.key});

  @override
  State<SephaTab> createState() => _SephaTabState();
}

class _SephaTabState extends State<SephaTab> {
  int counter = 0 ;
  List <String>athkarName = [
    "سبحان الله",
    "الحمد الله",
    "أكبر الله",
    "لا حول ولا قوة الا بالله"
  ];
  int index = 0;
  double angle = 0 ;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset("assets/image/head of seb7a.png"),
          Padding(
            padding: const EdgeInsets.only(top: 52),
            child: Transform.rotate(

              angle: angle,
              child: GestureDetector(child: Image.asset("assets/image/body of seb7a.png"),onTap: () {

                OnTap();
              },),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 19.9),
        child: Text(
          "عدد التسبيحات",
          style: TextStyle(
            fontFamily: "ElMessiri",
            fontWeight: FontWeight.w600,
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 26),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Color(0xffB7935F),
                borderRadius: BorderRadius.circular(30)),
            child: Text(
              "$counter",
              style: TextStyle(
                fontFamily: "ElMessiri",
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 29),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Color(0xffB7935F),
                borderRadius: BorderRadius.circular(30)),
            child: Text(
     "${athkarName[index]}"  ,
              style: TextStyle(
                fontFamily: "ElMessiri",
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      )
    ]);
  }
  OnTap(){
    counter++;
    if(counter %33 ==0){
      index ++;
      counter=0;

    }
    if(index == athkarName.length){
      index=0;
    }
    angle +=90;

    setState(() {
    });
  }
}
