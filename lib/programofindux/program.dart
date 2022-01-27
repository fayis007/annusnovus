import 'dart:convert';

import 'package:annusnovus/programofindux/partofprogram.dart';
import 'package:annusnovus/programofindux/programmore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class program extends StatefulWidget {
  const program({Key? key}) : super(key: key);

  @override
  _programState createState() => _programState();
}

class _programState extends State<program> {
  List<Program> program= [];
  String url = "https://run.mocky.io/v3/73103a19-731c-4ce7-8696-0636eef42284";
  Future? objfuture;
  Future<model_program> apiCall() async {
    model_program? objmodelprogram;
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      objmodelprogram = model_program.fromJson(data);
      print(response.body);
      setState(() {
        for (int i = 0; i < objmodelprogram!.program!.length; i++) {
          program.add(objmodelprogram.program![i]);
        }
      });
    }
    return objmodelprogram!;
  }

  @override
  void initState() {
    //TODO:Impliment initState
    super.initState();
    objfuture = apiCall();
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: SafeArea(
          left: true,
          right: true,
          top: true,
          bottom: true,
          child: Scaffold(
            body: FutureBuilder(
                future: objfuture,
                builder: (context, snap) {
                  if (snap.hasData) {
                    return Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(

                            color: Color(0xff44ad6e),
                           //image: DecorationImage(

                             // image: const AssetImage("assets/images/back.jpeg",),
                            //  fit: BoxFit.cover,
                            //  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4),BlendMode.darken),
                         //   )
                          ),
                          padding: EdgeInsets.only(
                            left: 15,
                            right: 15,
                            top: 25,
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: 200,

                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(15),
                                  padding: EdgeInsets.only(right:40 ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                        size: 50,
                                      ),
                                     // SizedBox(
                                      //  width: 350,
                                     // ),
                                      Icon(
                                        Icons.group,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 60,
                                  ),
                                  //  padding:  EdgeInsets.only(right: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.school,
                                        color: Colors.white,
                                        size: 50,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "PROGRAM",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25),
                                            ),
                                            Text(
                                              "subtitle",
                                              style: TextStyle(
                                                  color: Colors.yellowAccent,
                                                  fontSize: 13),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]
                          ),

                        ),
                        SizedBox(height: 10),
                        Expanded(
                            child: ListView.builder(
                                itemCount: program.length,
                                itemBuilder: (c, i) {
                                  return Card(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Container(
                                          width:
                                          MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              //spreadRadius: 3,
                                                blurRadius: 4,
                                                color: Colors.black12)
                                          ]),
                                          padding: EdgeInsets.all(10),
                                          //margin: EdgeInsets.all(20),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset(
                                                      "assets/images/pic.jpeg",
                                                      height: 150,
                                                      width: 78,
                                                      fit: BoxFit.cover),
                                                ],
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(right: 20),
                                                width: 300,

                                                child: Column(
                                                  children: [
                                                    Container(

                                                      width:
                                                      MediaQuery.of(context)
                                                          .size
                                                          .width,
                                                      alignment:
                                                      Alignment.topLeft,
                                                      padding: EdgeInsets.only(
                                                        left: 10,
                                                        bottom: 5,
                                                      ),
                                                      child: Column(

                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .start,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        children: [
                                                          Text(program[i].titile!,style: TextStyle(fontWeight: FontWeight.bold,
                                                              fontFamily:"NARROW"),),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Text(program[i].notes!,style: TextStyle(fontSize: 10),),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [


                                                             // SizedBox(
                                                             //   width: 175,
                                                             // ),
                                                              FlatButton(onPressed: (){
                                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>programofmore()));
                                                              },
                                                                  color: Colors.deepOrange,
                                                                  child: Text(program[i].more!,style: TextStyle(color: Colors.white),))
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          )),
                                    ),
                                  );
                                }))
                      ],
                    );
                  } else //{
                    return Container(
                      child: Center(
                        //  child: CircularProgressIndicator(),
                      ),
                    );
                }
              //},
            ),
          )),
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
    );
  }
}








