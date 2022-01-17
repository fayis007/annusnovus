import 'package:annusnovus/induxe.dart';
import 'package:annusnovus/registaration.dart';
import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  _firstState createState() => _firstState();
}

class _firstState extends State<first> {
 bool? _isCheked = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
    child: Scaffold(
    backgroundColor: Color(0xff44ad6e),
    body: Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.all(20),
    child: Column(
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
    "Login",
    style: TextStyle(
    color: Colors.white,
    fontSize: 40,
    fontWeight: FontWeight.normal,
    ),
    )
    ],
    ),
    SizedBox(
    height: 200,
    ),
    TextField(
    // controller: TextEditingController(text: "your@email.com",),
    decoration: InputDecoration(
    labelText: "Email or Mobile",
    labelStyle: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 20,
    wordSpacing: 3,
    ),
    hintText: "your@email.com",
    hintStyle: TextStyle(color: Colors.white, fontSize: 15),
    ),
    ),
    SizedBox(
    height: 40,
    ),
    TextField(
    // controller: TextEditingController(text: "your@email.com",),
    decoration: InputDecoration(
    labelText: "password",
    labelStyle: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 20,
    wordSpacing: 3,
    ),
    hintText: "Entar Password",
    hintStyle: TextStyle(color: Colors.white, fontSize: 15),
    ),
    ),
    Row(
    children: [

    ],
    ),
    SizedBox(
    height: 20,
    ),
    FlatButton(
    onPressed: () {
    Navigator.push(context,MaterialPageRoute(builder: (contect)=>induxe()));
    },
    color: Colors.deepOrange,
    textColor: Colors.white,
    child: Text(
    "Login",
    ),
    ),
    SizedBox(
    height: 80,
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text("Forget ID/Password?",
    style: TextStyle(
    color: Colors.white,
    )),
    SizedBox(width: 0),
    FlatButton(onPressed: (){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>register()));
    }, child: Text("Sing Up", style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold
    )))
    ],
    ),
    ],
    ),
    ),
    ),
      onWillPop: () async {
        return false;
      },
    );

  }
}
