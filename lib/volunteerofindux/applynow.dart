import 'package:annusnovus/volunteerofindux/requestcompleted.dart';
import 'package:annusnovus/volunteerofindux/volunteer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class applynow extends StatefulWidget {
  const applynow({Key? key}) : super(key: key);

  @override
  _applynowState createState() => _applynowState();
}

class _applynowState extends State<applynow> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        left: true,
        right: true,
        bottom: true,
        top: true,
        child: Scaffold(
          body: ListView(
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(left: 20, top: 20),
                    height: 150,
                    color: Color(0xff49914f),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 50,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              Icon(
                                Icons.volunteer_activism,
                                color: Colors.white,
                                size: 50,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "APPLY NOW\n",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                    )),
                                TextSpan(
                                    text: "Subtitle",
                                    style: TextStyle(
                                      color: Colors.yellowAccent,
                                      fontSize: 15,
                                    )),
                              ]))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.all(15),
                    height: 600,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          blurRadius: 2, spreadRadius: 2, color: Colors.grey),
                    ]),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                                margin: EdgeInsets.all(30),
                                child: Text(
                                    "By pressing conform button we will receive your request for volunteering for following programme",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        //fontWeight: FontWeight.bold,
                                        fontSize: 15))),
                            Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(
                                  left: 15, right: 15, top: 0, bottom: 15),
                              height: 200,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 2,
                                        spreadRadius: 2,
                                        color: Colors.grey),
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Program Name",
                                      style: TextStyle(
                                          color: Color(0xff49914f),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "SCHOOL NAME",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "Private School / Hawally",
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Divider(
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Text("Class Gender"),
                                      SizedBox(width: 100),
                                      Text("Male",
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
                                      Text("08:00- 13:30",
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
                                        child: Text("21/08/2018",
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
                                      Container(
                                          child: Text("Program  End Date")),
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
                                      Text("5",
                                          style: TextStyle(
                                              color: Color(0xff070807),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Material(
                              child: RaisedButton(
                                color: Colors.deepOrange,
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder:(context)=>requestcompleted()));
                                },
                                child: Text("Conform",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    )),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
