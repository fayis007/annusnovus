import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class partners extends StatefulWidget {
  const partners({Key? key}) : super(key: key);

  @override
  _partnersState createState() => _partnersState();
}

class _partnersState extends State<partners> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30, right: 15, top: 25),
                // color: Colors.red,
                decoration: BoxDecoration(color: Color(0xff58e8a0)),
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                          padding: EdgeInsets.only(left: 65),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "PARTNERS",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                              Text(
                                "subtitle",
                                style: TextStyle(
                                    color: Colors.yellowAccent, fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 6),
                    margin: EdgeInsets.only(
                        left: 10, top: 20, right: 10, bottom: 0),
                    height: 110,
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
                    child: Row(
                      children: [
                        Image.asset("assets/images/4.jpeg"),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Organization Name",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 7),
                            Text(
                              "Lorem ipusm dolor sit amet, consectetur adipiscing elit.Duis nec\nimprerdiet dolor.  ",
                              style: TextStyle(fontSize: 11),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.mail,
                                  color: Colors.green,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "company@gmail.com",
                                  style: TextStyle(fontSize: 10),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Icons.vpn_lock_sharp,
                                  color: Colors.green,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "www.company.com",
                                  style: TextStyle(fontSize: 10),
                                ),
                                SizedBox(
                                  width: 5,

                                ),
                                FlatButton(color: Colors.deepOrange,onPressed: (){}, child: Text("More",style: TextStyle(color: Colors.white),)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 6),
                    margin: EdgeInsets.only(
                        left: 10, top: 20, right: 10, bottom: 0),
                    height: 110,
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
                    child: Row(
                      children: [
                        Image.asset("assets/images/4.jpeg"),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Organization Name",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 7),
                            Text(
                              "Lorem ipusm dolor sit amet, consectetur adipiscing elit.Duis nec\nimprerdiet dolor.  ",
                              style: TextStyle(fontSize: 11),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.mail,
                                  color: Colors.green,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "company@gmail.com",
                                  style: TextStyle(fontSize: 10),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Icons.vpn_lock_sharp,
                                  color: Colors.green,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "www.company.com",
                                  style: TextStyle(fontSize: 10),
                                ),
                                SizedBox(
                                  width: 5,

                                ),
                                FlatButton(color: Colors.deepOrange,onPressed: (){}, child: Text("More",style: TextStyle(color: Colors.white),)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 6),
                    margin: EdgeInsets.only(
                        left: 10, top: 20, right: 10, bottom: 0),
                    height: 110,
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
                    child: Row(
                      children: [
                        Image.asset("assets/images/4.jpeg"),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Organization Name",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 7),
                            Text(
                              "Lorem ipusm dolor sit amet, consectetur adipiscing elit.Duis nec\nimprerdiet dolor.  ",
                              style: TextStyle(fontSize: 11),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.mail,
                                  color: Colors.green,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "company@gmail.com",
                                  style: TextStyle(fontSize: 10),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Icons.vpn_lock_sharp,
                                  color: Colors.green,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "www.company.com",
                                  style: TextStyle(fontSize: 10),
                                ),
                                SizedBox(
                                  width: 5,

                                ),
                                FlatButton(color: Colors.deepOrange,onPressed: (){}, child: Text("More",style: TextStyle(color: Colors.white),)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 6),
                    margin: EdgeInsets.only(
                        left: 10, top: 20, right: 10, bottom: 0),
                    height: 110,
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
                    child: Row(
                      children: [
                        Image.asset("assets/images/4.jpeg"),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Organization Name",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 7),
                            Text(
                              "Lorem ipusm dolor sit amet, consectetur adipiscing elit.Duis nec\nimprerdiet dolor.  ",
                              style: TextStyle(fontSize: 11),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.mail,
                                  color: Colors.green,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "company@gmail.com",
                                  style: TextStyle(fontSize: 10),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Icons.vpn_lock_sharp,
                                  color: Colors.green,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "www.company.com",
                                  style: TextStyle(fontSize: 10),
                                ),
                                SizedBox(
                                  width: 5,

                                ),
                                FlatButton(color: Colors.deepOrange,onPressed: (){}, child: Text("More",style: TextStyle(color: Colors.white),)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
