import 'package:flutter/material.dart';
import 'package:cake/widget/toggle_buttons.dart';
import 'package:cake/widget/text_input.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CakeCalculator',
      home: App(),
    );

  }
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // const App({Key? key}) : super(key: key);
  String result = '???';
  int numb = 1;

  void calculateResult() {
    setState(() {
      result = 'Result x ';
      numb += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(

            backgroundColor: Colors.transparent,
              appBar: AppBar(
                title: Center(child: Text('CakesCalculator')),
                backgroundColor: Color.fromRGBO(17,52,82,1),
                shadowColor: Colors.white70,
              ),
              body:  Container(
                child: Column(
                  children: <Widget>[
                     SizedBox(height: 20),
                     ToggleButtonsTop(),
                     SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 45),
                        TextInputsLeftTop(),
                        SizedBox(width: 60),
                        TextInputsRightTop(),
                        SizedBox(width: 45),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: ToggleButtonsTop(),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 45),
                        TextInputsLeftBottom(),
                        SizedBox(width: 60),
                        TextInputsRightBottom(),
                        SizedBox(width: 45),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 200,
                          height: 50,
                          child: Text('$result' + '$numb', textAlign: TextAlign.left, style: TextStyle(fontSize: 30, color: Colors.white),)),
                        SizedBox(width: 10,),
                        Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: 3,
                                  blurRadius: 8,
                                  offset: Offset(1.0,1.0)
                              ),
                            ],
                          ),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(color: Colors.white)),
                            onPressed: calculateResult,
                            color: Color.fromRGBO(17,52,82,1),
                            child: Text('Result', style: TextStyle(fontSize: 24),), textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),

                  ],
                ),
              )),
        ),
      ),
    );
  }
}
