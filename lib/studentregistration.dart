import 'package:annusnovus/registaration.dart';
import 'package:annusnovus/studentregistration2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class studentregistration extends StatefulWidget {
  const studentregistration({Key? key}) : super(key: key);

  @override
  _studentregistrationState createState() => _studentregistrationState();
}

class _studentregistrationState extends State<studentregistration> {
  int group = 1;
  List<String> programing = ["2000", "2001", "2002", "2003", "2004"];
  String language = "2000";
  int month = 1;
  List<String> samble = ["jan", "feb", "mar"];
  String objsamble = "jan";
  int datee = 1;
  List<String> dates = ["01", "02", "03"];
  String objdates = "01";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    height: 100,
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 48),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Step 2/3",
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
                        height: 600,
                        width: MediaQuery.of(context).size.width,
                        margin:
                            EdgeInsets.only(left: 20, right: 20, bottom: 10),
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
                                  top: 20,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Full Name in English",
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
                                      Icons.perm_contact_calendar,
                                      color: Colors.green,
                                    ),
                                    hintText: "Enter Name in English",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    )),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 40,
                                  top: 20,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Full Name in Arabic",
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
                                      Icons.perm_contact_calendar,
                                      color: Colors.green,
                                    ),
                                    hintText: "Enter Name in Arabic",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    )),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 40,
                                  top: 20,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Mobile",
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
                                      Icons.call,
                                      color: Colors.green,
                                    ),
                                    hintText: "Enter Mobile Number",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    )),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 40,
                                  top: 20,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Email",
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
                                      Icons.email,
                                      color: Colors.green,
                                    ),
                                    hintText: "Enter Email Id",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    )),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 40,
                                  top: 20,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Birthday",
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
                                //  color:Colors.green ,
                                child: Row(
                                  children: [
                                    Icon(FontAwesomeIcons.calendar,color: Colors.green),
                                    SizedBox(width: 15,),
                                    DropdownButton(
                                        items: programing
                                            .map((e) => DropdownMenuItem(
                                          child: Text(e),
                                          value: e,
                                        ))
                                            .toList(),
                                        hint: Text(
                                          "Date of birth",
                                          style: TextStyle(
                                              color: Colors.black),
                                        ),
                                        value: language,
                                        onChanged: (val) {
                                          setState(() {
                                            language = "2002";
                                          });
                                        }),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    DropdownButton(
                                        items: samble
                                            .map((e) => DropdownMenuItem(
                                          child: Text(e),
                                          value: e,
                                        ))
                                            .toList(),
                                        hint: Text(
                                          "Month",
                                          style: TextStyle(
                                              color: Colors.black),
                                        ),
                                        value: objsamble,
                                        onChanged: (val) {
                                          setState(() {
                                            objsamble = "jan";
                                          });
                                        }),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    DropdownButton(
                                        items: dates
                                            .map((e) => DropdownMenuItem(
                                          child: Text(e),
                                          value: e,
                                        ))
                                            .toList(),
                                        hint: Text(
                                          "Date",
                                          style: TextStyle(
                                              color: Colors.black),
                                        ),
                                        value: objdates,
                                        onChanged: (val) {
                                          setState(() {
                                            objdates = "01";
                                          });
                                        }),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 40,
                                  top: 20,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Gender",
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
                                // margin: EdgeInsets.only(left: 50),
                                child: Row(
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.transgender,color: Colors.green,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
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
                                    Text("Male"),
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
                                    Text("Female")
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 20),
                                padding: EdgeInsets.only(left: 200, right: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    register()));
                                      },
                                      child: Text(
                                        "Back",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    studentregistration2()));
                                      },
                                      child: Text(
                                        "Next",
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
