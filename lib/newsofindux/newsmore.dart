import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class newsmore extends StatefulWidget {
  const newsmore({Key? key}) : super(key: key);

  @override
  _newsmoreState createState() => _newsmoreState();
}

class _newsmoreState extends State<newsmore> {
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
            Column(children: [
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      ])),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 550,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 0,
                            blurRadius: 4,
                            color: Colors.grey,
                          )
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "BBS at Enterpreneurship Master with Al Ghanim\nIndustries",
                          style: TextStyle(fontFamily: "Narrow", fontSize: 20),
                        ),
                        Container(

                            alignment: Alignment.center,
                            child: Image.asset(
                              "assets/images/pic.jpeg",
                              fit: BoxFit.fill,
                              height: 200,
                              width: 600,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_today_sharp,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "28 july 2018",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 40,
                            )
                          ],
                        ),
                        Text(
                            "Lorem ipusm dolor sit amet, consectetur adipiscing elit.Duis nec\nimprerdiet dolor. Integer laoreet fermentum magna, ac fegiat eros\nluctus as,Lorem ipusm dolor sit amet,consectetur adipisicing elit\nDuis nec imprerdiet dolor. Integer laoreet fermentum magna,\n ac fegiat eros luctus ac. "),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                            "Lorem ipusm dolor sit amet, consectetur adipiscing elit.Duis nec\nimprerdiet dolor. Integer laoreet fermentum magna, ac fegiat eros\nluctus as,Lorem ipusm dolor sit amet,consectetur adipisicing elit\nDuis nec imprerdiet dolor. Integer laoreet fermentum magna,\n ac fegiat eros luctus ac. "),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
