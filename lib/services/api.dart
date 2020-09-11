import 'package:http/http.dart';
import 'dart:convert';
import 'dart:async';


class api {
  String price1;
  String price2;
  String p1;
  String p2;
  
  api({this.price1, this.price2});

  Future<void> getdata() async{
    
    
    try {
      
          Response response = await get('https://min-api.cryptocompare.com/data/pricemulti?fsyms=BTC,DASH&tsyms=BTC,USD,EUR&api_key=6e890f682235c03a8e9ca39ba250967fb4f819e851f5938f47e60acf0588b3c7');
          Map data = jsonDecode(response.body);
          int data1 =(data['BTC']['USD']).round();
          p1 =data1.toString();
      
     
        Response response2 = await get('https://min-api.cryptocompare.com/data/pricemulti?fsyms=ETH,DASH&tsyms=BTC,USD,EUR&api_key=6e890f682235c03a8e9ca39ba250967fb4f819e851f5938f47e60acf0588b3c7');
        
        Map data2 = jsonDecode(response2.body);
        
        int eth =(data2['ETH']['USD']).round();
        p2 =eth.toString();
    } catch (e) {
      print('the error is $e');
      p1="No Internet";
      p2="No Internet";
    }    
  }
}



api instance = api(price1:'hello' ,price2:'hahah' );
