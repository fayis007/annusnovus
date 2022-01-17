import 'package:annusnovus/newsofindux/news.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class induxe extends StatefulWidget {
  const induxe({Key? key}) : super(key: key);

  @override
  _induxeState createState() => _induxeState();
}

class _induxeState extends State<induxe> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        body: Column(
          children: [

            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              color: Color(0xff44ad6e),
              child: Column(

                children: [
                  SizedBox(height: 25,),
                  Icon(
                    Icons.school,
                    size: 80,
                    color: Colors.white,

                  ),
                  Text(
                    "INJAZ Kuwait",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        letterSpacing: 0,
                        fontFamily: 'lora'),
                  ),
                  Text(
                    "A Member of JA World de",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'PTSansNarrow-Bold'),
                  ),
                ],
              ),
            ),

            Container(
              height: 568,
              // color: Colors.yellowAccent,
              width: MediaQuery.of(context).size.width,
              // margin: EdgeInsets.only(left: 35,right: 35,top: 0,bottom: 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          GestureDetector(
                            child: Container(
                              padding:
                              EdgeInsets.only(right: 15, top: 10, left: 10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.menu_book_sharp,
                                        color: Colors.white,
                                        size: 50,
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "News",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              margin: EdgeInsets.only(top: 20),
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xff44da6e),
                                      Colors.yellowAccent
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.topRight),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          GestureDetector(
                            child: Container(
                              padding:
                              EdgeInsets.only(right: 15, top: 10, left: 10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.perm_media_outlined,
                                        color: Colors.white,
                                        size: 50,
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Media\nGallery",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              margin: EdgeInsets.only(left: 20, top: 20),
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xff44da6e),
                                      Colors.yellowAccent
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.topLeft),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>newspage()));
                            }
                            ,
                            child: Container(
                              padding:
                              EdgeInsets.only(right: 15, top: 10, left: 10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.announcement_outlined,
                                        color: Colors.white,
                                        size: 50,
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "About Us",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xff44da6e),
                                      Colors.yellowAccent
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.topLeft),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          GestureDetector(
                            child: Container(
                              padding:
                              EdgeInsets.only(right: 15, top: 10, left: 10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.school,
                                        color: Colors.white,
                                        size: 50,
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Programs",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              margin: EdgeInsets.only(
                                left: 20,
                              ),
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xff44da6e),
                                      Colors.yellowAccent
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.topRight),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          GestureDetector(
                            child: Container(
                              padding:
                              EdgeInsets.only(right: 15, top: 10, left: 10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.group,
                                        color: Colors.white,
                                        size: 50,
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Partners",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.orangeAccent,
                                      Colors.yellowAccent
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.topLeft),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          GestureDetector(
                            child: Container(
                              padding: EdgeInsets.only(
                                  right: 15, top: 10, left: 10, bottom: 0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.volunteer_activism,
                                        color: Colors.white,
                                        size: 50,
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Volunteer\nwith us",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              margin: EdgeInsets.only(
                                left: 20,
                              ),
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.orangeAccent,
                                      Colors.yellowAccent
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.topRight),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          GestureDetector(
                            child: Container(
                              padding:
                              EdgeInsets.only(right: 15, top: 10, left: 10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.library_books_outlined,
                                        color: Colors.white,
                                        size: 50,
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "My Programs",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.teal, Colors.orangeAccent],
                                    begin: Alignment.topCenter,
                                    end: Alignment.topLeft),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          GestureDetector(
                            child: Container(
                              padding:
                              EdgeInsets.only(right: 15, top: 10, left: 10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.contact_mail_rounded,
                                        color: Colors.white,
                                        size: 50,
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Contactus",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              margin: EdgeInsets.only(
                                left: 20,
                              ),
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.teal, Colors.orangeAccent],
                                    begin: Alignment.topCenter,
                                    end: Alignment.topLeft),
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
          ],
        ),
      ),
      onWillPop: () async{
        return false;
      },
    );
  }
}


