

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/my_provider.dart';

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
    "الله أكبر",
    "لا حول ولا قوة الا بالله"
  ];
  int index = 0;
  double angle = 0 ;

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(pro.appTheme == ThemeMode.light
              ? "assets/image/head of seb7a.png"
              : "assets/image/head of seb7a_black.png"),
          Padding(
            padding: const EdgeInsets.only(top: 52),
            child: Transform.rotate(

              angle: angle,
              child: GestureDetector(child: Image.asset(pro.appTheme == ThemeMode.light
    ? "assets/image/body of seb7a.png"
        : "assets/image/body of seb7a_black.png"),onTap: () {

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
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600,color: pro.appTheme == ThemeMode.light
              ?Colors.black:Colors.white,),
          textAlign: TextAlign.center,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 26),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: pro.appTheme == ThemeMode.light
                    ?Color(0xffB7935F):Color(0xffFACC1D),
                borderRadius: BorderRadius.circular(30)),
            child: Text(
              "$counter",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600,color: pro.appTheme == ThemeMode.light
                  ?Colors.black:Colors.black,),
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
                color: pro.appTheme == ThemeMode.light
                    ?Color(0xffB7935F):Color(0xffFACC1D),
                borderRadius: BorderRadius.circular(30)),
            child: Text(
athkarName[index]  ,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600,color: pro.appTheme == ThemeMode.light
                  ?Colors.black:Colors.black,),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      SizedBox(height: 40,),
      Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: pro.appTheme == ThemeMode.light
                  ?Color(0xffB7935F):Color(0xffFACC1D),
              borderRadius: BorderRadius.circular(30)),
          child: GestureDetector(
            onTap:(){OnTap();}  ,
            child: Text(
              "ابدأ"  ,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600,color: pro.appTheme == ThemeMode.light
                  ?Colors.black:Colors.black,),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: pro.appTheme == ThemeMode.light
                  ?Color(0xffB7935F):Color(0xffFACC1D),
              borderRadius: BorderRadius.circular(30)),
          child: GestureDetector(
            onTap: (){
              OnStart();
     },
            child: Text(
              "اعاده"  ,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600,color: pro.appTheme == ThemeMode.light
                  ?Colors.black:Colors.black,),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],)
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
    angle +=180;

    setState(() {
    });

  }

  OnStart(){
    index=0;
    athkarName[index];
    counter =0;
    angle =90 ;
    setState(() {

    });

  }

}
