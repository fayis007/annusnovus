import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class view extends StatefulWidget {
  const view({Key? key}) : super(key: key);

  @override
  _viewState createState() => _viewState();
}

class _viewState extends State<view> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: true,
      right: true,
      top: true,
      bottom: true,
      child: Scaffold(
body: Column(
  children: [
    Container(
      padding: EdgeInsets.only(
        left: 15,
        right: 15,
        top: 25,
      ),
      width: MediaQuery.of(context).size.width,
      height: 105,
      color: Color(0xff44ad6e),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(15),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 50,
                  ),
                  SizedBox(
                    width: 360,
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
        height: 595,
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
            Text("Gallery Name",style: TextStyle(fontFamily: "Narrow", fontSize: 20,),
        ),
            Row(
              children: [
                Icon(Icons.calendar_today_sharp,color: Colors.green,size: 10,),SizedBox(width: 5,),
                Text("28 july 2018",style: TextStyle(
                    fontWeight: FontWeight.normal
                ),),
                SizedBox(height: 40,)
              ],
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset("assets/images/pic.jpeg", fit: BoxFit.fill,
                  height: 200,
                  width: 600),
            ),
            SizedBox(height: 0,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Image.asset("assets/images/pic.jpeg",width: 90,height: 100,),
    Image.asset("assets/images/4.jpeg",width: 90,height: 100,),
    Image.asset("assets/images/1.jpeg",width: 90,height: 100,),
    Image.asset("assets/images/2.jpeg",width: 90,height: 100,),
    Image.asset("assets/images/3.jpeg",width: 90,height: 100,),
  ],
),
            SizedBox(height: 0),
            Text("Lorem ipusm dolor sit amet, consectetur adipiscing elit.Duis necimprerdiet dolor. Integer laoreet fermentum magna, ac fegiat erosluctus as,Lorem ipusm dolor sit amet,consectetur adipisicing elitDuis nec imprerdiet dolor. Integer laoreet fermentum magna, ac fegiat eros luctus ac. ",style: TextStyle(fontFamily: "lora"),),
            SizedBox(height: 10,),
            Text("Lorem ipusm dolor sit amet, consectetur adipiscing elit.Duis necimprerdiet dolor. Integer laoreet fermentum magna, ac fegiat erosluctus as,Lorem ipusm dolor sit amet,consectetur adipisicing elitDuis nec imprerdiet dolor. Integer laoreet fermentum magna, ac fegiat eros luctus ac. ",style: TextStyle(fontFamily: "lora")),


          ],
        ),
      ),
      ],
    ),
  ],
),
      ),
    );
  }
}
