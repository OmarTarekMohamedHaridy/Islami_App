import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:islami/hadith_model.dart';

import '../../hadith_details.dart';

class AhadithTab extends StatefulWidget {
  const AhadithTab({super.key});

  @override

  State<AhadithTab> createState() => _AhadithTabState();
}

class _AhadithTabState extends State<AhadithTab> {
List<HadithModel>allAhadith =[];
@override
  void initState() {
    super.initState();
    LoadHadithFile();
  }
  @override
  Widget build(BuildContext context) {
// if(allAhadith.isEmpty){
//   LoadHadithFile();
// }  ده او init الاتنين واحد
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
      Image.asset(
      "assets/image/59253-quran-basmala-islamic-kufic-arabic-calligraphy-icon.png",
      height: 219),
        Divider(),
        Text("الأحاديث",style: TextStyle(
          fontFamily: "ElMessiri",
          fontWeight: FontWeight.w600,
          fontSize: 25,
        ),
            textAlign: TextAlign.center,),
        Divider(),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(thickness: 1,),
            itemCount: allAhadith.length,
            itemBuilder: (context, index) {
            return InkWell(onTap: () {
Navigator.pushNamed(context, HadithDetails.routeName,
arguments:allAhadith[index] );
            },
              child: Text(allAhadith[index].title,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,),
            );
          },),
        )
      ]
    );
  }

  LoadHadithFile(){
  rootBundle.loadString("assets/files/ahadeth.txt").then((Value){
    List<String> ahadeth =Value.split("#");
for(int i=0; i<ahadeth.length; i++){
  String HdethOne = ahadeth[i];
  List<String> HadethLine = HdethOne.trim().split("\n");
  String title = HadethLine[0];
  HadethLine.removeAt(0);
  List<String> Content=HadethLine;
  HadithModel hadithModel = HadithModel(title, Content);
  print(title);
  allAhadith.add(hadithModel);
  setState(() {

  });
}
  });


  }
}
