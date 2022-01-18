import 'package:annusnovus/firstpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class welcome extends StatefulWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: SafeArea(
        left: true,
        right: true,
        top: true,
        child: Scaffold(
          backgroundColor: Color(0xff44ad6e),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.school,
                      size: 200,
                    )
                  ],
                ),
                Text(
                  "INJAZ Kuwait",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      letterSpacing: 0,
                      fontFamily: 'lora'),
                ),
                Container(
                  padding: EdgeInsets.only(left: 127),
                  child: Row(
//mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "A Member of JA World de",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            letterSpacing: 0,
                            fontFamily: 'PTSansNarrow-Bold'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome to injaz",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                            letterSpacing: 0,
                            fontFamily: 'fatface'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("This appdesigned for volunteers",
                              style: TextStyle(color: Colors.white, fontSize: 26)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("who would like to helpe and ",
                              style: TextStyle(color: Colors.white, fontSize: 25)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("young people",
                              style: TextStyle(color: Colors.white, fontSize: 25)),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        //margin: EdgeInsets.only(top:20),
                        color: Colors.white,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Choose Your Language",
                                  style: TextStyle(
                                      color: Color(0xff495669), fontSize: 25),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(

                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: Image.asset(
                                    "assets/images/oguk.jpg",
                                  ),
                                  iconSize: 80,
                                  onPressed: () {
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>first()));
                                  },
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                IconButton(
                                  icon: Image.asset(
                                    "assets/images/america.jpg",
                                  ),
                                  iconSize: 80,
                                  onPressed: () {
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>first()));
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
    );
  }
}
