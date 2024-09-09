import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:provider/provider.dart';

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
    var pro = Provider.of<MyProvider>(context);
    var model = ModalRoute.of(context)?.settings.arguments as HadithModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(pro.appTheme == ThemeMode.light
                  ? "assets/image/bg3.png"
                  : "assets/image/bg_dark.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            model.title,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: pro.appTheme == ThemeMode.light
                    ? Colors.black
                    : Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 30),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Card(
            color: pro.appTheme == ThemeMode.light
                ? Colors.white
                : Color(0xff141A2E),
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: pro.appTheme != ThemeMode.light
                      ? Colors.white
                      : Color(0xff141A2E),
                )),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    textDirection: TextDirection.rtl,
                    model.Content[index],
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: pro.appTheme == ThemeMode.light
                            ? Colors.black
                            : Color(0xffFACC1D)),
                    textAlign: TextAlign.center,
                  ),
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
