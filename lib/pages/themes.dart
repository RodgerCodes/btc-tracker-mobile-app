import 'package:flutter/material.dart';

class Themes extends StatefulWidget {
  @override
  _ThemesState createState() => _ThemesState();
}

class _ThemesState extends State<Themes> {

  changeMode(BuildContext context) {
      setState(() {
        tobechangedcolor = Colors.black26;
        textcolor = Colors.white;
        iconColor = Colors.white;
      });
  }

lightmode(BuildContext context) {
  setState(() {
    tobechangedcolor = Colors.white;
    textcolor = Colors.black;
    iconColor = Colors.black;
  });
} 
  dynamic tobechangedcolor;
  dynamic textcolor;
  dynamic iconColor;
  @override
  Widget build(BuildContext context) {
    dynamic color = tobechangedcolor;
    dynamic tcolor = textcolor;
    dynamic icolor = iconColor;
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: Text('Themes'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body:Column(
        children: <Widget>[
          Row(
            children: <Widget>[
               Padding(
                 padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                 child: IconButton(
                   icon: Padding(
                     padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                     child: Icon(
                       Icons.cloud_done,
                       color: icolor,
                     ),
                   ),
                   onPressed: () {
                     lightmode(context);
                   },
                 )
               ),
               Padding(
                 padding:EdgeInsets.fromLTRB(10, 10, 0, 0),
                 child: Text('Light',
                 style: TextStyle(
                   fontSize: 20,
                   color: tcolor,
                   fontWeight: FontWeight.bold
                 ),),
               )
            ],
          ),
          Divider(
            height:30,
            color: Colors.grey[800],
          ),
          Row(
            children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: IconButton(
                  icon: Icon(
                    Icons.cloud_done,
                    color:icolor,
                  ),
                  onPressed: () {
                    changeMode(context);
                  },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: Text(
                'Dark',
                style: TextStyle(
                  fontSize: 20,
                  color: tcolor,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            
            ],
            
          ),
          Divider(
            height:30,
            color:Colors.grey[800]
          )
          
        ],
      ),
    );
  }
}