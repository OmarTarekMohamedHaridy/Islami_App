import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/home/islami.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:islami/sura_details.dart';
import 'package:provider/provider.dart';
import 'hadith_details.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp( MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MyProvider(),),

      ],
      builder: (context, child) {
        var provider = Provider.of<MyProvider>(context);
        return EasyLocalization(
            startLocale: Locale("en"),
            path: 'assets/translation',
            supportedLocales: [Locale('en'), Locale('ar')],
            child: MyApp());
      },
    ),);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
       debugShowCheckedModeBanner: false,
      themeMode: provider.appTheme ,
      theme:MyThemeData.LightTheme,
      darkTheme:MyThemeData.DarkTheme,
      routes: {
HomeScreen.routeName : (context) => HomeScreen(),
        SuraDetails.routeName : (context) => SuraDetails(),
        HadithDetails.routeName : (context) => HadithDetails(),
      },
      initialRoute:HomeScreen.routeName ,
    );
  }
}
