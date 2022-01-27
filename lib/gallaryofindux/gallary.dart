import 'dart:convert';

import 'package:annusnovus/gallaryofindux/galleryview.dart';
import 'package:annusnovus/gallaryofindux/partofgallary.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class gallary extends StatefulWidget {
  const gallary({Key? key}) : super(key: key);

  @override
  _gallaryState createState() => _gallaryState();
}

class _gallaryState extends State<gallary> {
  List<Gallary> gallary= [];
  String url = "https://run.mocky.io/v3/0f69c2b4-6355-4454-acb9-ef68b9006e8f";
  Future? objfuture;
  Future<model_gallary> apiCall() async {
    model_gallary? objmodelgallary;
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      objmodelgallary = model_gallary.fromJson(data);
      print(response.body);
      setState(() {
        for (int i = 0; i < objmodelgallary!.gallary!.length; i++) {
          gallary.add(objmodelgallary.gallary![i]);
        }
      });
    }
    return objmodelgallary!;
  }

  @override
  void initState() {
    //TODO:Impliment initState
    super.initState();
    objfuture = apiCall();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                        padding: EdgeInsets.only(
                          left: 15,
                          right: 15,
                          top: 25,
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        color: Color(0xff44ad6e),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(

                                margin: EdgeInsets.all(15),
                                child: Row(
                                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                      size: 50,
                                    ),
                                    SizedBox(
                                      width: 280,
                                    ),
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
                                      Icons.image_outlined,
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
                                            "MEDIA GALLERY",
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
                            ]),
                      ),
                      Expanded(
                          child: ListView.builder(
                              itemCount:gallary.length,
                              itemBuilder: (c, i) {
                                return Card(
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
                                          Expanded(
                                            child: Container(
                                              width: 393,

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
                                                        Text(gallary[i].titile!,style: TextStyle(fontWeight: FontWeight.bold,
                                                            fontFamily:"NARROW"),),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Text(gallary[i].notes!),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Row(
                                                         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .calendar_today_sharp,
                                                              color:
                                                              Colors.green,
                                                            ),
                                                            SizedBox(
                                                              width: 15,
                                                            ),
                                                            Text(
                                                              gallary[i].date!,style: TextStyle(fontWeight: FontWeight.bold),),
                                                            SizedBox(
                                                              width: 60,
                                                            ),
                                                            FlatButton(onPressed: (){
                                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>view()));
                                                            },
                                                                color: Colors.deepOrange,
                                                                child: Text(gallary[i].view!,style: TextStyle(color: Colors.white),))
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
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
        ));
  }
}





