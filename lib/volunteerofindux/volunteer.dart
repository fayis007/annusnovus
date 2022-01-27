import 'dart:convert';

import 'package:annusnovus/volunteerofindux/filters.dart';
import 'package:annusnovus/volunteerofindux/partofvolunteer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class volunteer extends StatefulWidget {
  const volunteer({Key? key}) : super(key: key);

  @override
  _volunteerState createState() => _volunteerState();
}

class _volunteerState extends State<volunteer> {
  List<Volunteer> volunteer = [];
  String url = "https://run.mocky.io/v3/c0ce71e8-eea8-4601-bf7b-aa1b0ea7a95d";
  Future? objfuture;
  Future<model_volunteer> apiCall() async {
    model_volunteer? objvolunteer;
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      objvolunteer = model_volunteer.fromJson(data);
      print(response.body);
      setState(() {
        for (int i = 0; i < objvolunteer!.volunteer!.length; i++) {
          volunteer.add(objvolunteer.volunteer![i]);
        }
      });
    }
    return objvolunteer!;
  }

  @override
  void initState() {
    //TODO Impliment initState
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
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 25,
                ),
                width: MediaQuery.of(context).size.width,
                height: 150,
                color: Color(0xff44ad6e),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 50,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 60),
                          child: Icon(
                            Icons.volunteer_activism,
                            color: Colors.white,
                            size: 50,
                          ),
                        ),
                        SizedBox(width: 6),
                        RichText(
                          text: TextSpan(
                              //  style: DefaultTextStyle.of(context).style,
                              children: [
                                TextSpan(
                                    text: "VOLUNTEER WITH US\n",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20)),
                                TextSpan(
                                    text: "subtitle",
                                    style: TextStyle(color: Colors.yellow))
                              ]),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: volunteer.length,
                    itemBuilder: (c, i) {
                      return Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(
                                left: 10, top: 20, right: 10, bottom: 0),
                            height: 230,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  // color: Colors.grey
                                )
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(volunteer[i].titile!,
                                        style: TextStyle(
                                            color: Color(0xff0d5222),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17)),
                                    FlatButton(
                                      color: Colors.deepOrange,
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>filters()));
                                      },
                                      child: Text(volunteer[i].apply!,
                                          style: TextStyle(
                                            color: Colors.white,
                                          )),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(volunteer[i].schoolname!,
                                    style: TextStyle(
                                        color: Color(0xff070807),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10)),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  volunteer[i].school!,
                                  style: TextStyle(fontSize: 10),
                                ),
                                SizedBox(height: 5),
                                Divider(
                                  color: Colors.black54,
                                ),
                                SizedBox(height: 5),



                                Row(
                                  children: [
                                    Text("Class Gender"),
                                    SizedBox(width: 100),
                                    Text(volunteer[i].gender!,
                                        style: TextStyle(
                                            color: Color(0xff070807),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11)),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Text("Programm Timing"),
                                    SizedBox(width: 72),
                                    Text(volunteer[i].time!,
                                        style: TextStyle(
                                            color: Color(0xff070807),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11)),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Text("Program Start Date"),
                                    SizedBox(width: 66),
                                    Container(
                                      child: Text(volunteer[i].date!,
                                          style: TextStyle(
                                              color: Color(0xff070807),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11)),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Container(child: Text("Program  End Date")),
                                    SizedBox(width: 69),
                                    Text("30/08/2018",
                                        style: TextStyle(
                                            color: Color(0xff070807),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11)),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Container(child: Text("Total Days")),
                                    SizedBox(width: 116),
                                    Text(volunteer[i].days!,
                                        style: TextStyle(
                                            color: Color(0xff070807),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11)),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
