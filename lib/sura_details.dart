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
      Scaffold(
        appBar: AppBar(

          title: Text(model.name,),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Card(shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.black)),
            color:  Color(0xff141A2E),

            child: ListView.builder(itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(verses[index],
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600,color: Color(0xffFACC1D)),),
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
