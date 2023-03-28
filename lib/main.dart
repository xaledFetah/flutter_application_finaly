import 'package:flutter/material.dart';
import 'package:flutter_application_1/page_cards.dart';
import 'package:flutter_application_1/page_addcityship.dart';
import 'package:flutter_application_1/page_addship.dart';
import 'package:flutter_application_1/page_employes.dart';
import 'package:flutter_application_1/page_qaddcompany.dart';
import 'package:flutter_application_1/page_request.dart';
import 'package:flutter_application_1/test_home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // arabic text derction code

      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ar', 'AE'), // Spanish
      ],

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        "addcityship": (context) => addCityshipPage(),
        "addship": (context) => AddCompany(),
        "ship": (context) => GridCardC(),
        "home": (context) => Home(),
        "qaddcompany": (context) => QAddCompany(),
        "employes": (context) => EmployPage(),
        "request": (context) => Requests(),
      },
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}
