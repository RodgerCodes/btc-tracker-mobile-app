import 'package:flutter/material.dart';
import 'package:BTCTRACKER/pages/themes.dart';
class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {



 Future<Null> _handlerefresh() async {
   
 }

@override
void initState(){
  super.initState();
}
 _checked() {
   setState(() {
     value = !value;
   });
 }

 bool value= true;
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: RefreshIndicator(
        onRefresh: _handlerefresh,
              child:ListView(children: <Widget>[
                 SafeArea(
            child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Checkbox(
                      value: value,
                      onChanged:_checked(),
                     
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Text('Enable Push Notification',
                    style: TextStyle(
                      fontSize: 20
                    ),),
                  )
                ],
              ),
              Divider(
                height: 30,
                color: Colors.grey[800]
              ),
              Row(
                 children: <Widget>[
                   IconButton(
                     icon: Icon(
                       Icons.color_lens,
                     ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Themes');
                    },
                   )
                 ],
              ),
              Divider(
                height: 30,
                color: Colors.grey[800]
              )
            ],
          ),
        ),
              ],)
      )
    );
  }
}