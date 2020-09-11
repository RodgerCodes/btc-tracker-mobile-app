import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:BTCTRACKER/services/api.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  
  void fetchdata() async{
    api instance = api(price1:'hello', price2: 'hahah' );
       await instance.getdata();
    Navigator.pushReplacementNamed(context, '/home', arguments:{
      'price1':instance.p1,
      'price2':instance.p2
    });
  }



  @override
  void initState() {
    super.initState();
    fetchdata();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(10, 40, 0, 0),
            child: SafeArea(
              child: Image.asset('assets/bitcoin2.png',
              width: 200,
              height: 150,),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 350, 0, 0),
            child:SpinKitFadingCircle(
              color: Colors.orange,
              size: 50,
            )
          )
        ],
      )
    );
  }
}