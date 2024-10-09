import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class SuraDetailsPro extends ChangeNotifier {
  List<String> verses = [];
  LoadSuraFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> suraLines = sura.split("\n");
    verses = suraLines;
notifyListeners();
  }
}