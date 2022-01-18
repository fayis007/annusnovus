import 'package:annusnovus/aboutofindux/about.dart';
import 'package:flutter/material.dart';

class eboutmember extends StatefulWidget {
  const eboutmember({Key? key}) : super(key: key);

  @override
  _eboutmemberState createState() => _eboutmemberState();
}

class _eboutmemberState extends State<eboutmember> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: true,
      right: true,
      bottom: true,
      top: true,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
                top: 15,
              ),
              width: MediaQuery.of(context).size.width,
              height: 160,
              color: Color(0xff44ad6e),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 15, right: 15, bottom: 5, top: 10),
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
                  Container(
                    margin: EdgeInsets.only(
                      left: 60,
                    ),
                    //  padding:  EdgeInsets.only(right: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.announcement_outlined,
                          color: Colors.white,
                          size: 50,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ABOUT US",
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
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 0, top: 10, right: 0),
                          height: 30,
                          width: 100,
                          color: Colors.grey,
                          child: Center(
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>about()));
                              },
                              child: Text(
                                "Who we are",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          margin:
                          EdgeInsets.only(left: 0, top: 10, right: 15),
                          color: Colors.green,
                          height: 30,
                          width: 150,
                          child: Center(
                            child: FlatButton(
                              onPressed: () {},
                              child: Text(
                                "Board Members",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 1,
                      color: Colors.green,
                      thickness: 3,
                      endIndent: 10,
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 510,
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                    )
                  ]),
                  padding: EdgeInsets.only(left: 15,right: 15,top: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Image.asset( "assets/images/4.jpeg",height:100,width: 140,fit: BoxFit.fill,),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("John Doich",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 17)),
                              Text("Position",style: TextStyle(fontSize: 10,fontFamily: "lora"),),
                              SizedBox(height: 0,),
                              Text("Lorem ipusm dolor sit amet, consectetur adipiscing elit.Duis nec\nimprerdiet dolor. Integer laoreet fermentum magna, ac fegiat eros\nluctus as,Lorem ipusm dolor sit amet,consectetur adipisicing elit\nDuis nec imprerdiet dolor. Integer laoreet fermentum magna,\n ac fegiat eros luctus ac. ",style: TextStyle(
                                fontSize: 10
                              ),),

                            ],
                          )

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(alignment: Alignment.bottomRight, color:Colors.green,child: FlatButton(onPressed: (){}, child: Text("More",style: TextStyle(color: Colors.white),)))
                        ],
                      ),
                      Divider(
                        color: Colors.green,
                        thickness: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Image.asset( "assets/images/4.jpeg",height:100,width: 140,fit: BoxFit.fill,),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("John Doich",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 17)),
                              Text("Position",style: TextStyle(fontSize: 10,fontFamily: "lora"),),
                              SizedBox(height: 0,),
                              Text("Lorem ipusm dolor sit amet, consectetur adipiscing elit.Duis nec\nimprerdiet dolor. Integer laoreet fermentum magna, ac fegiat eros\nluctus as,Lorem ipusm dolor sit amet,consectetur adipisicing elit\nDuis nec imprerdiet dolor. Integer laoreet fermentum magna,\n ac fegiat eros luctus ac. ",style: TextStyle(
                                  fontSize: 10
                              ),),

                            ],
                          )

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(alignment: Alignment.bottomRight, color:Colors.green,child: FlatButton(onPressed: (){}, child: Text("More",style: TextStyle(color: Colors.white),)))
                        ],
                      ),
                      Divider(
                        color: Colors.green,
                        thickness: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Image.asset( "assets/images/4.jpeg",height:100,width: 140,fit: BoxFit.fill,),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("John Doich",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 17)),
                              Text("Position",style: TextStyle(fontSize: 10,fontFamily: "lora"),),
                              SizedBox(height: 0,),
                              Text("Lorem ipusm dolor sit amet, consectetur adipiscing elit.Duis nec\nimprerdiet dolor. Integer laoreet fermentum magna, ac fegiat eros\nluctus as,Lorem ipusm dolor sit amet,consectetur adipisicing elit\nDuis nec imprerdiet dolor. Integer laoreet fermentum magna,\n ac fegiat eros luctus ac. ",style: TextStyle(
                                  fontSize: 10
                              ),),

                            ],
                          )

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(alignment: Alignment.bottomRight, color:Colors.green,child: FlatButton(onPressed: (){}, child: Text("More",style: TextStyle(color: Colors.white),)))
                        ],
                      ),
                      Divider(
                        color: Colors.green,
                        thickness: 3,
                      ),
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
