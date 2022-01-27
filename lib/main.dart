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
import 'package:annusnovus/partnersofindux/PartnersPage.dart';

import 'package:annusnovus/programofindux/partofprogram.dart';
import 'package:annusnovus/programofindux/program.dart';
import 'package:annusnovus/programofindux/programmore.dart';
import 'package:annusnovus/registaration.dart';
import 'package:annusnovus/studentregistration.dart';
import 'package:annusnovus/studentregistration2.dart';
import 'package:annusnovus/volunteerofindux/applynow.dart';
import 'package:annusnovus/volunteerofindux/filters.dart';
import 'package:annusnovus/volunteerofindux/requestcompleted.dart';
import 'package:annusnovus/volunteerofindux/volunteer.dart';
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
        primarySwatch: Colors.blue,
      ),
      home: studentregistration(),
    );
  }
}
