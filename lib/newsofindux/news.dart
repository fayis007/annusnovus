import 'dart:convert';
import 'package:annusnovus/newsofindux/jesonconvert.dart';
import 'package:annusnovus/newsofindux/newsmore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

class newspage extends StatefulWidget {
  const newspage({Key? key}) : super(key: key);

  @override
  _newspageState createState() => _newspageState();
}

class _newspageState extends State<newspage> {
  List<News> news = [];
  String url = "https://run.mocky.io/v3/6f0454db-cd93-42fe-8e20-ee1e913aa97a";
  Future? objfuture;
  Future<model_new> apiCall() async {
    model_new? objmodelnew;
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      objmodelnew = model_new.fromJson(data);
      print(response.body);
      setState(() {
        for (int i = 0; i < objmodelnew!.news!.length; i++) {
          news.add(objmodelnew.news![i]);
        }
      });
    }
    return objmodelnew!;
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
          resizeToAvoidBottomInset: true,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                      Icons.menu_book_rounded,
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
                                            "NEWS",
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
                              itemCount: news.length,
                              itemBuilder: (c, i) {
                                return Card(
                                  child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                            spreadRadius: 3,
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
                                                  "assets/images/library.jpg",
                                                  height: 150,
                                                  width: 78,
                                                  fit: BoxFit.cover),
                                            ],
                                          ),
                                          Container(
                                            width: 300,
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  alignment: Alignment.topLeft,
                                                  padding: EdgeInsets.only(
                                                    left: 10,
                                                    bottom: 5,
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        news[i].titile!,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontFamily:
                                                                "NARROW"),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                        news[i].notes!,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.justify,
                                                        maxLines: 2,
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Row(
                                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                        children: [
                                                          Container(
                                                            //  color: Colors.green,
                                                            child: Row(
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .calendar_today_sharp,
                                                                  color: Colors
                                                                      .green,
                                                                ),
                                                                SizedBox(
                                                                  width: 15,
                                                                ),
                                                                Text(
                                                                  news[i].date!,
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 80,
                                                          ),
                                                          FlatButton(
                                                              onPressed: () {
                                                                Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder:
                                                                            (context) =>
                                                                                newsmore()));
                                                              },
                                                              color: Colors
                                                                  .deepOrange,
                                                              child: Text(
                                                                news[i].more!,
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                              ))
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
