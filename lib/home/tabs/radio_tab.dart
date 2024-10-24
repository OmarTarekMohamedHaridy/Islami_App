import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:islami/home/tabs/edit_radio.dart';
import 'package:islami/home/tabs/radio_model.dart';

class RadioTab extends StatelessWidget {
AudioPlayer player = AudioPlayer();
   RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: getRadios(), builder: (context, snapshot) {
    if(snapshot.hasData){
      List<Radios>?  radios = snapshot.data?.radios??[];
    return
    Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
    Stack(
    alignment: Alignment.topCenter,
    children: [
    Padding(
    padding: const EdgeInsets.only(top: 167),
    child: Image.asset("assets/image/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png"),
    ),
    ],
    ),
    Expanded(
    child: ListView.builder(
    scrollDirection: Axis.horizontal,
    physics: PageScrollPhysics(),
    itemBuilder: (context, index)=>SizedBox(
        width: MediaQuery.of(context).size.width,
        child: EditRadio(radio: radios[index],player:player))
    ,itemCount: 10,),
    )

    ]);
    }
    else if(snapshot.hasError){return
      Text("there is an Error");}

    else{return Center(child: CircularProgressIndicator(),);}
    },);



  }

 Future<RadioModel?> getRadios()async{
var uri = Uri.parse("https://mp3quran.net/api/v3/radios");
var response=await  http.get(uri);
if(response.statusCode ==200){
  var json= jsonDecode(response.body);
  return RadioModel.fromJson(json);
}
  }
}
