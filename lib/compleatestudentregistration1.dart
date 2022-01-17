import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class compleatestudentregistration extends StatefulWidget {
  const compleatestudentregistration({Key? key}) : super(key: key);

  @override
  _compleatestudentregistrationState createState() =>
      _compleatestudentregistrationState();
}

class _compleatestudentregistrationState
    extends State<compleatestudentregistration> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        body: SafeArea(
          left: true,
          right: true,
          top: true,
          bottom: true,
          child: Container(
            child: Column(children: [
              Container(
                padding: EdgeInsets.only(left: 30, top: 0, right: 90),
                width: MediaQuery.of(context).size.width,
                height: 150,
                color: Color(0xff44ad6e),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 50,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "REGISTRATION COMPLETED",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 31),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sucess",
                            style: TextStyle(
                              color: Colors.yellowAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    height: 545,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 5),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.assignment_turned_in_sharp,
                              color: Colors.green,
                              size: 150,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Thank you Registration",
                              style: TextStyle(
                                color: Colors.green,
                                fontFamily: "lora",
                                fontSize: 25,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "We will contact you once your",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "registration is approved",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 150,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FlatButton(
                                onPressed: () {
                                 Navigator.pop(context);
                                },
                                color: Colors.deepOrange,
                                child: Text("Close",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
      onWillPop: () async {
        return false;
      },
    );
  }
}
