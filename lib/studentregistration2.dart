import 'package:annusnovus/compleatestudentregistration1.dart';
import 'package:annusnovus/studentregistration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class studentregistration2 extends StatefulWidget {
  const studentregistration2({Key? key}) : super(key: key);

  @override
  _studentregistration2State createState() => _studentregistration2State();
}

class _studentregistration2State extends State<studentregistration2> {

  int group = 1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: true,
    body: SafeArea(
    top: true,
    bottom: true,
    left: true,
    right: true,
    child: Container(
      child: ListView(
    children: [
      Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 30, top: 0, right: 90),
            width: MediaQuery.of(context).size.width,
            height: 114,
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
                      "STUDENT REGISTRATION",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 48),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Step 3/3",
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
            height: 15,
          ),
          Stack(
            children: [
              Container(
                height: 566,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                    ),
                  ],
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          left: 40,
                          top: 15,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "University/Collage",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.home_outlined,
                              color: Colors.green,
                            ),
                            hintText: "Enter University/Collage",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            )),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 40,
                          top: 15,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Faculty",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.assignment_ind_sharp,
                              color: Colors.green,
                            ),
                            hintText: "Enter Faculty Name",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            )),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 40,
                          top: 15,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Major",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.assignment_ind_sharp,
                              color: Colors.green,
                            ),
                            hintText: "Enter Major Name",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            )),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 40,
                          top: 15,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Strat Year",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.calendar_today_sharp,
                              color: Colors.green,
                            ),
                            hintText: "Enter year of Strating",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            )),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 40,
                          top: 15,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Languages Speak",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.language,
                              color: Colors.green,
                            ),
                            suffix: Row(
                              children: [
                                Radio(
                                  activeColor: Colors.grey,
                                  value: 1,
                                  groupValue: group,
                                  onChanged: (T) {
                                    setState(() {
                                      group = 1;
                                    });
                                  },
                                ),
                                Text("Arabic"),
                                SizedBox(
                                  width: 10,
                                ),
                                Radio(
                                  activeColor: Colors.grey,
                                  value: 2,
                                  groupValue: group,
                                  onChanged: (T) {
                                    setState(() {
                                      group = 2;
                                    });
                                  },
                                ),
                                Text("English")
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 40,
                          top: 15,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Additional Speak",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextField(
                        maxLines: 2,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.app_registration,
                              color: Colors.green,
                            )),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        padding: EdgeInsets.only(left: 200,right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FlatButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>studentregistration()));
                              },
                              child: Text(
                                "Back",
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.grey,
                            ),
                            SizedBox(width: 5,),
                            FlatButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>compleatestudentregistration()));
                              },
                              child: Text(
                                "Register",
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.deepOrange,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
      ),
    ),
    ),
    );

  }
}
