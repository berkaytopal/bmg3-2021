import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  
  @override
  _MyAppState createState() => _MyAppState(); 
    
  }

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(
        title: Text("HOŞGELDİNİZ"),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey[800],
      
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.grey,
                child: Center(
                  child: Column(

                    mainAxisSize: MainAxisSize.min,
                    children: <Widget> [
                      Icon(Icons.language, size:70.0, ),
                      Text("Dünya Haberleri", style : new TextStyle(fontSize: 18.0))
                    ],),
                ),)
            ),
            
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.grey,
                child: Center(
                  child: Column(

                    mainAxisSize: MainAxisSize.min,
                    children: <Widget> [
                      Icon(Icons.add_location_alt, size:70.0, ),
                      Text("Yerel Haberler", style : new TextStyle(fontSize: 18.0))
                    ],),
                ),)
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.grey,
                child: Center(
                  child: Column(

                    mainAxisSize: MainAxisSize.min,
                    children: <Widget> [
                      Icon(Icons.directions_bike, size:70.0, ),
                      Text("Bisiklet Turları", style : new TextStyle(fontSize: 18.0))
                    ],),
                ),)
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.grey,
                child: Center(
                  child: Column(

                    mainAxisSize: MainAxisSize.min,
                    children: <Widget> [
                      Icon(Icons.local_fire_department_sharp, size:70.0, ),
                      Text("Kamp Yerleri", style : new TextStyle(fontSize: 18.0))
                    ],),
                ),)
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.grey,
                child: Center(
                  child: Column(

                    mainAxisSize: MainAxisSize.min,
                    children: <Widget> [
                      Icon(Icons.help_outlined, size:70.0, ),
                      Text("          Bunları Biliyor Musunuz?", style : new TextStyle(fontSize: 18.0))
                    ],),
                ),)
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.grey,
                child: Center(
                  child: Column(

                    mainAxisSize: MainAxisSize.min,
                    children: <Widget> [
                      Icon(Icons.local_phone_rounded, size:70.0, ),
                      Text("İletişim", style : new TextStyle(fontSize: 18.0))
                    ],),
                ),)
            ),
            
          ]
        ),
      ),
    );
  }



}
 