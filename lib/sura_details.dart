import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:islami/provider/sura_details_pro.dart';
import 'package:islami/suramodel.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatelessWidget {
  const SuraDetails({super.key});
  static const String routeName = "SuraDetails";
  @override
  Widget build(BuildContext context) {

    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;

    var pro = Provider.of<MyProvider>(context);

    return ChangeNotifierProvider(
      create: (context) => SuraDetailsPro()..LoadSuraFile(model.index),
      builder: (context, child) {
        var provider = Provider.of<SuraDetailsPro>(context);
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  pro.appTheme==ThemeMode.light?

                  "assets/image/bg3.png":
                  "assets/image/bg_dark.png"

              ),

              fit: BoxFit.fill,
            ),
          ),
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                model.name,style: TextStyle(color: pro.appTheme==ThemeMode.light? Colors.black:Colors.white),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Card(
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide( color: pro.appTheme!=ThemeMode.light? Colors.white:Color(0xff141A2E),),),
                color: pro.appTheme==ThemeMode.light? Colors.white:Color(0xff141A2E),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        provider.verses[index],
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600, color: pro.appTheme==ThemeMode.light? Colors.black:Color(0xffFACC1D)),
                      ),
                    );
                  },
                  itemCount: provider.verses.length,
                ),
              ),
            ),
          ),
        );
      },

    );
  }


}
