import 'package:annusnovus/studentregistration.dart';
import 'package:annusnovus/studentregistration2.dart';
import 'package:flutter/material.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: true,
      right: true,
      top: true,
      child: Scaffold(
        backgroundColor: Color(0xff44ad6e),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 50,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "REGISTRATION",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      //  fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 80),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Step 1/3",
                      style: TextStyle(
                        color: Colors.yellowAccent,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 300,
              ),
              Text(
                "Choose Registration Type",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'PTSansNarrow-Bold',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: _value,
                    activeColor: Colors.white,
                    fillColor:
                        MaterialStateColor.resolveWith((states) => Colors.white),
                    onChanged: (value) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => studentregistration()));
                      setState(() {
                        _value = 1;
                      });
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Student Vounteer",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Radio(
                    value: 2,
                    groupValue: _value,
                    activeColor: Colors.white,
                    fillColor:
                        MaterialStateColor.resolveWith((states) => Colors.white),
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        _value = 2;
                      });
                    },
                    //   fillColor:
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Individual Volunteer",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Radio(
                    value: 3,
                    groupValue: _value,
                    activeColor: Colors.white,
                    fillColor:
                        MaterialStateColor.resolveWith((states) => Colors.white),
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        _value = 3;
                      });
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Corporate Volunteer",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    color: Colors.deepOrange,
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => studentregistration()));
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
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
