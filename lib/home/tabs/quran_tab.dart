import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/sura_details.dart';

import '../../suramodel.dart';

class QuranTab extends StatefulWidget {
  QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  List<String> SuraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  List<String> numberOfAyaat = [
    "7",
    "286",
    "200",
    "176",
    "120",
    "165",
    "206",
    "75",
    "129",
    "109",
    "123",
    "111",
    "43",
    "52",
    "99",
    "128",
    "111",
    "110",
    "98",
    "135",
    "112",
    "78",
    "118",
    "64",
    "77",
    "227",
    "93",
    "88",
    "69",
    "60",
    "34",
    "30",
    "73",
    "54",
    "45",
    "70",
    "182",
    "88",
    "75",
    "85",
    "54",
    "53",
    "89",
    "59",
    "37",
    "35",
    "38",
    "29",
    "18",
    "45",
    "60",
    "49",
    "62",
    "55",
    "78",
    "96",
    "29",
    "22",
    "24",
    "13",
    "14",
    "11",
    "11",
    "18",
    "12",
    "12",
    "30",
    "52",
    "52",
    "44",
    "28",
    "28",
    "20",
    "56",
    "40",
    "31",
    "50",
    "40",
    "46",
    "42",
    "29",
    "19",
    "36",
    "25",
    "22",
    "17",
    "19",
    "26",
    "23",
    "20",
    "15",
    "21",
    "11",
    "8",
    "8",
    "19",
    "5",
    "8",
    "8",
    "11",
    "11",
    "8",
    "3",
    "9",
    "5",
    "4",
    "7",
    "3",
    "6",
    "3",
    "5",
    "4",
    "5",
    "6"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          "assets/image/moshaf_logo.png",
          height: 277,
        ),
        Table(
          border: TableBorder.all(color: Color(0xffB7935F), width: 3),
          children: [
            TableRow(children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "عدد الآيات",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "اسم السورة",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  )),
            ]),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: SuraNames.length,
            itemBuilder: (context, index) {
              return Table(
                border: TableBorder.all(color: Color(0xffB7935F), width: 1),
                children: [
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        numberOfAyaat[index],
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            SuraDetails.routeName,
                            arguments: SuraModel(SuraNames[index], index),
                          );
                        },
                        child: Text(
                          SuraNames[index],
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ]),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
