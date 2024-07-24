import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hadith_model.dart';

class HadithDetails extends StatefulWidget {
  static const String routeName = "HadithScreen";
  const HadithDetails({super.key});

  @override
  State<HadithDetails> createState() => _HadithDetailsState();
}

class _HadithDetailsState extends State<HadithDetails> {
  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as HadithModel;
    return Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/image/bg3.png"))),
      child: Scaffold( backgroundColor: Colors.transparent,
        appBar: AppBar(backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(model.title,style:TextStyle(fontFamily: "ElMessiri",
            fontWeight: FontWeight.bold,
            fontSize: 30,),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Card(shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.black)),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(textDirection: TextDirection.rtl,
                    model.Content[index],style:TextStyle(fontFamily: "ElMessiri",
                    fontWeight: FontWeight.w400,
                    fontSize: 25,),
                  textAlign: TextAlign.center,),
                );
              },
              itemCount: model.Content.length,
            ),
          ),
        ),
      ),
    );
  }
}
