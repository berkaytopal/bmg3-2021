import 'package:bmg3/main.dart';
import 'package:flutter/material.dart';
import 'questions.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.grey[900],
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: SoruSayfasi(),
            ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> elections=[];

  TestData test_1= TestData();

  void buttonFunction(bool choosenButton){

    if(test_1.isTestDone()==true){

      showDialog(
      context: context,
      builder: (BuildContext context) {

        return AlertDialog(
          title: Text("Bilgileri Bitirdiniz."),
 
          actions: <Widget>[
            
            new FlatButton(
              child: new Text("Başa dön"),
              onPressed: () {

                Navigator.of(context).pop(); // ekrandaki widgeti kapatır.

                setState(() {
                test_1.resetTest();
                elections=[];
                });
                
              },
            ),
            new FlatButton(
              child: new Text("kapat"),
              onPressed: () {

                Navigator.pushReplacement(
                  // sadece push kullanılırsa çıkıştan sonra geri giriş yapmış gibi görünüyor.Bu sayfayı bir sonrakinin üzreine yazar.
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyApp(),
                  ),
                );

                setState(() {
                test_1.resetTest();
                elections=[];
                });
                
              },
            ),
          ],
        );
      },
    );

    
      

    }else{   
     setState(() {
        test_1.getQuestionAnswer()==choosenButton;
        
                                                            
       test_1.nextQuestion();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(


          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test_1.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white ,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          //runSpacing: 12, // dikey boşluk bırakır.
          spacing: 12,   // yatay boşluk bırakır.
          children: elections,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                
                        
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.yellow[700],
                          child: Icon(Icons.arrow_forward, size: 30.0),
                          onPressed: () {  
                            buttonFunction(true);
                          },
                        ))),
              ])),
        )
      ],
    );
  }
}

