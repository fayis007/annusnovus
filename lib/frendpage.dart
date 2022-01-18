import 'package:annusnovus/firstpage.dart';
import 'package:annusnovus/welcomepage.dart';
import 'package:flutter/material.dart';

class frend extends StatefulWidget {
  const frend({Key? key}) : super(key: key);

  @override
  State<frend> createState() => _frendState();
}

class _frendState extends State<frend> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }
  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>welcome()));
  }
  Widget build(BuildContext context) {
    return WillPopScope(
      child: SafeArea(
        left: true,
        right: true,
        top: true,
        bottom: true,
        child: Scaffold(
          backgroundColor: Color(0xff44ad6e),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Center(
                  child: Icon(
                    Icons.school,
                    size: 200,
                  ),
                ),
              ),
              Text("INJAZ Kuwait",style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,letterSpacing: 0,
                  fontFamily: 'lora'
              ),
              ),
              Container(
                padding: EdgeInsets.only(left: 127),
                child: Row(
//mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("A Member of JA World de",style: TextStyle(
                        color: Colors.white,
                        fontSize:15,letterSpacing: 0,
                        fontFamily: 'PTSansNarrow-Bold'
                    ),),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
      onWillPop: ()async{
        Navigator.pop(context);
        return false;
      },
    );
  }
}
