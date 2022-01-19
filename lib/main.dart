import 'package:annusnovus/aboutofindux/about.dart';
import 'package:annusnovus/aboutofindux/aboutmember.dart';
import 'package:annusnovus/compleatestudentregistration1.dart';
import 'package:annusnovus/firstpage.dart';
import 'package:annusnovus/frendpage.dart';
import 'package:annusnovus/gallaryofindux/gallary.dart';
import 'package:annusnovus/gallaryofindux/galleryview.dart';

import 'package:annusnovus/induxe.dart';
import 'package:annusnovus/newsofindux/news.dart';
import 'package:annusnovus/newsofindux/newsmore.dart';
import 'package:annusnovus/partnersofindux/partners.dart';
import 'package:annusnovus/programofindux/partofprogram.dart';
import 'package:annusnovus/programofindux/program.dart';
import 'package:annusnovus/programofindux/programmore.dart';
import 'package:annusnovus/registaration.dart';
import 'package:annusnovus/studentregistration.dart';
import 'package:annusnovus/studentregistration2.dart';
import 'package:annusnovus/welcomepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:partners(),
    );
  }
}
