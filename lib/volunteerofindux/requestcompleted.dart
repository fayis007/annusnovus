import 'package:annusnovus/induxe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class requestcompleted extends StatefulWidget {
  const requestcompleted({Key? key}) : super(key: key);

  @override
  _requestcompletedState createState() => _requestcompletedState();
}

class _requestcompletedState extends State<requestcompleted> {
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
                    height: 200,
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
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "REQUEST COMPLETED\n",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                    )),
                                TextSpan(
                                    text: "Success",
                                    style: TextStyle(
                                      color: Colors.yellowAccent,
                                      fontSize: 15,
                                    )),
                              ]))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(left: 15, top: 100, right: 15),
                    margin: EdgeInsets.all(15),
                    height: 600,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          blurRadius: 2, spreadRadius: 2, color: Colors.grey),
                    ]),
                    child: Column(
                      children: [
                        Icon(
                          Icons.outgoing_mail,
                          color: Colors.green,
                          size: 100,
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Thank You For Your Request.",
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        SizedBox(height: 30),
                        Text(
                            "We will contact you once your \n       registration is approved",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                                fontSize: 20)),
                        SizedBox(height: 60),
                        FlatButton(
                            color: Colors.deepOrange,
                            onPressed: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>induxe()));
                            },
                            child: Text(
                              "Main Page",
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
