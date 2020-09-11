import 'package:flutter/material.dart';
import 'package:BTCTRACKER/pages/constants.dart';
import 'package:flutter/services.dart';
import 'package:share/share.dart';
import 'dart:async';
import 'package:BTCTRACKER/services/api.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Future<Null> _handleRefresh() async{
       api instance = api(price1: 'hello', price2: 'hahah');
       await instance.getdata();   
  }

share(BuildContext context) {
   Share.share('check out https://rodgercodes.netlify.com'
    );
  }

  Future<String> createAlertBox(BuildContext context) {
     TextEditingController customController = TextEditingController();
     return showDialog(context: context, builder: (context){
       return AlertDialog(
         title:Row(
           children: <Widget>[
             Image.asset('assets/bitcoin2.png',
             width: 30,
             height: 30,),
             Text('Target Price')
           ],
         ),
         content: TextField(
           controller:customController,
           decoration: InputDecoration(
             hintText: "Enter the target price",
             hintStyle: TextStyle(
               color: Colors.grey[400]
             )
           ),
         ),
        actions: <Widget>[
          MaterialButton(
            elevation: 5.0,
            child: Text('Submit'),
            onPressed: () {
               Navigator.of(context).pop(customController.text.toString());
            },
          )
        ],
       );
     });
   }

   Future<String> createAlertBox2(BuildContext context) {
     TextEditingController customController = TextEditingController();
     return showDialog(context: context, builder: (context){
       return AlertDialog(
         title:Row(
           children: <Widget>[
             Image.asset('assets/bitcoin2.png',
             width: 30,
             height: 30,),
             Text('Target Price')
           ],
         ),
         content: TextField(
           controller:customController,
           decoration: InputDecoration(
             hintText: "Enter the target price",
             hintStyle: TextStyle(
               color: Colors.grey[400]
             )
           ),
         ),
        actions: <Widget>[
          MaterialButton(
            elevation: 5.0,
            child: Text('Submit'),
            onPressed: () {
               Navigator.of(context).pop(customController.text.toString());
            },
          )
        ],
       );
     });
   }


  createAlertDialog(BuildContext context){
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title:Row(
          children: <Widget>[
           Image.asset('assets/bitcoin2.png',
           width:30,
           height:30,),
           Padding(
             padding:EdgeInsets.fromLTRB(5, 0, 0, 0),
             child: Text('About'),
           )
          ],
        ),
        content: Text('The Bitcoin tracker app was developed by Rodger Kumwanje',
          style: TextStyle(
              fontSize: 17
          ),),
        actions: <Widget>[
          MaterialButton(
            elevation: 5.0,
            child: Text('Ok'),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      );
    });
  }

 Map price1 ;
 String target1 = '0' ;
 String target2 = '0';

 

  @override
  Widget build(BuildContext context) {
    price1 = ModalRoute.of(context).settings.arguments;  
   String ethe = price1['price2'];
   String btc = price1['price1'];
    return Scaffold(
      appBar: AppBar(
        title: Text('BTC TRACKER'),
        centerTitle: true,
        backgroundColor: Colors.orange,
        actions: <Widget>[
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context){
              return Constants.Choices.map((String choice){
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
            onSelected: choiceAction,
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: _handleRefresh,
        child: ListView(
          children: <Widget>[
            Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
           Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               boxShadow:[
                 BoxShadow(
                   color: Color.fromRGBO(0, 0, 0, .03),
                   blurRadius: 100.0,
                   offset: Offset(0, 10)
                 )
               ]
             ),
             child: Card(
               color: Colors.orange,
                margin: EdgeInsets.fromLTRB(20, 40, 20, 20),
                child: Container(               
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Text('BTC NAME',
                        style: TextStyle(
                          color:Colors.white,
                          fontSize:20,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.fromLTRB(10, 0, 0, 25),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Current Price',
                              style: TextStyle(
                                color:Colors.white,
                                fontSize:20,
                                fontWeight:FontWeight.bold
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(':',
                        style: TextStyle(
                          fontSize:20,
                          fontWeight:FontWeight.bold,
                          color:Colors.white
                        ),),
                            ),
                        Padding(
                          padding:EdgeInsets.fromLTRB(10, 0, 0,0),
                          child: Text('USD $btc',
                          style: TextStyle(
                            fontSize:20,
                            fontWeight:FontWeight.bold,
                           color:Colors.white
                          ),),
                        )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 25),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Target Price',
                              style: TextStyle(
                                fontSize:20,
                                fontWeight:FontWeight.bold,
                                color:Colors.white
                              ),
                            ),
                            Text(
                              ':',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(target1,
                              style:TextStyle(
                                fontSize:20,
                                color:Colors.white,
                                fontWeight:FontWeight.bold
                              ),),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.fromLTRB(0, 0, 0, 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            FlatButton(
                          onPressed: () {
                            createAlertBox(context).then((onValue) {
                              if(onValue == null) {
                                setState(() {
                                  target1 = '0';
                                });
                              }
                              else {
                               setState(() {
                                target1 = onValue;
                              });
                              }
                              
                            });
                          },
                          child: Text(
                            'Add Target'
                          ),
                          color: Colors.white,
                        ),
                        FlatButton(
                          onPressed: () {
                              Navigator.pushNamed(context, '/graphs-1');
                          },
                          child: Text(
                            'View graph'
                          ),
                          color: Colors.white
                        )
                          ],
                        ),
                      )
                      
                    ],
                  ),
               ),
             ),
           ),
           Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               boxShadow: [
                 BoxShadow(
                   color:Color.fromRGBO(0, 0, 0, 0.04),
                   blurRadius: 100,
                   offset: Offset(0, 10)
                 )
               ]
             ),
             child: Card(
               margin: EdgeInsets.fromLTRB(20, 30, 20, 10),
               color: Colors.orange,
                  child: Container(
                 
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Text('ETHERIUM',
                        style: TextStyle(
                          color:Colors.white,
                          fontSize:20,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10,0, 0, 25),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Current Price',
                              style: TextStyle(
                                color:Colors.white,
                                fontSize:20,
                                fontWeight:FontWeight.bold
                              ),
                            ),
                            Padding(
                              padding:EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(':',
                        style: TextStyle(
                          fontSize:20,
                          fontWeight:FontWeight.bold,
                          color:Colors.white
                        ),),
                            ),
                        Padding(
                          padding:EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text('USD $ethe',
                          style: TextStyle(
                              fontSize:20,
                              fontWeight:FontWeight.bold,
                             color:Colors.white
                            )),
                        )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 25),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Target Price',
                              style: TextStyle(
                                fontSize:20,
                                fontWeight:FontWeight.bold,
                                color:Colors.white
                              ),
                            ),
                            Text(
                              ':',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            ),
                            Text(target2,
                            style: TextStyle(
                               fontSize:20,
                               fontWeight: FontWeight.bold,
                               color:Colors.white
                            ),)
                          ],
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.fromLTRB(0, 0, 0, 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            FlatButton(
                          onPressed: () {
                            createAlertBox2(context).then((onValue) {
                              setState(() {
                                target2 = onValue;
                              });
                            });
                          },
                          child: Text(
                            'Add Target'
                          ),
                          color: Colors.white,
                        ),
                        FlatButton(
                          onPressed: () {
                              Navigator.pushNamed(context, '/graphs-2');
                          },
                          child: Text(
                            'View graph'
                          ),
                          color: Colors.white
                        )
                          ],
                        ),
                      )
                    ],
                  ),
               ),
             ),
           )
         ],
       )
          ],
        ),
      ),
    );
  }

  void choiceAction(String choice) {
    if(choice == Constants.About){
      createAlertDialog(context);
    }
    else if(choice == Constants.Share) {
      share(context);
    }
    else if(choice == Constants.settings){
       Navigator.pushNamed(context, '/settings');
    }

    else  if(choice == Constants.query){
        SystemNavigator.pop();
    }

  }
}


