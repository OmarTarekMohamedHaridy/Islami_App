import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/suramodel.dart';

class SuraDetails extends StatefulWidget {
  const SuraDetails({super.key});
static const String routeName = "SuraDetails" ;

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String>verses = [];

  @override
  Widget build(BuildContext context) {
    var model=ModalRoute.of(context)?.settings.arguments as SuraModel;
    if(verses.isEmpty){
      LoadSuraFile(model.index);
    }
    return Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/image/bg3.png"))),
      child:
      Scaffold( backgroundColor: Colors.transparent,
        appBar: AppBar( backgroundColor: Colors.transparent,
          centerTitle: true,iconTheme: IconThemeData(size: 30,color: Colors.black),
          title: Text(model.name,style: TextStyle(fontFamily: "ElMessiri",
          fontWeight: FontWeight.bold,
          fontSize: 30,),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Card(shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.black)),
            color: Colors.white,

            child: ListView.builder(itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(verses[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: "ElMessiri",
                  fontWeight: FontWeight.w400,
                  fontSize: 25,),),
              );
            },
            itemCount: verses.length,),
          ),
        ),

      ),
    )  ;
  }

  LoadSuraFile(int index)async{
   String sura = await rootBundle.loadString("assets/files/${index+1}.txt");
  List<String> suraLines = sura.split("\n");
  verses=suraLines;
setState(() {

});
  }
}
