import 'package:flutter/material.dart';
import 'package:cake/widget/text_input.dart';
import 'package:cake/widget/buttons.dart';

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

enum Top { circle, square, rect }
enum Bottom { circle, square, rect }

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // const App({Key? key}) : super(key: key);
  String result = '???';
  Top? top;
  Bottom? bottom;


  void calculateResult() {
    try {
      var LT = double.parse(TextInputsLeftTopState.leftTopText.text!=null
          && TextInputsLeftTopState.leftTopText.text.isNotEmpty?TextInputsLeftTopState.leftTopText.text:'0');
      var RT = double.parse(TextInputsRightTopState.rightTopText.text!=null
          && TextInputsRightTopState.rightTopText.text.isNotEmpty?TextInputsRightTopState.rightTopText.text:'0');
      var LD = double.parse(TextInputsLeftBottomState.leftBottomText.text!=null
          && TextInputsLeftBottomState.leftBottomText.text.isNotEmpty?TextInputsLeftBottomState.leftBottomText.text:'0');
      var RD = double.parse(TextInputsRightBottomState.rightBottomText.text!=null
          && TextInputsRightBottomState.rightBottomText.text.isNotEmpty?TextInputsRightBottomState.rightBottomText.text:'0');


      setState(() {
        if (top == Top.circle && bottom == Bottom.circle) {
          result = ((LD * LD) / (LT * LT)).toStringAsFixed(4);
        } else if (top == Top.circle && bottom == Bottom.square) {
          result =
              ((LD * LD) / ((LT / 2) * (LT / 2) * 3.1415)).toStringAsFixed(4);
        } else if (top == Top.circle && bottom == Bottom.rect) {
          result =
              ((LD * RD) / ((LT / 2) * (LT / 2) * 3.1415)).toStringAsFixed(4);

        } else if (top == Top.square && bottom == Bottom.circle) {
          result =
              ((LD / 2) * ((LD / 2) * 3.14) / (LT * LT)).toStringAsFixed(4);
        } else if (top == Top.square && bottom == Bottom.square) {
          result = ((LD * LD) / (LT * LT)).toStringAsFixed(4);
        } else if (top == Top.square && bottom == Bottom.rect) {
          result = ((LD * RD) / (LT * LT)).toStringAsFixed(4);

        } else if (top == Top.rect && bottom == Bottom.circle) {
          result =
              (((LD / 2) * (LD / 2) * 3.1415) / (LT * RT)).toStringAsFixed(4);
        } else if (top == Top.rect && bottom == Bottom.square) {
          result = ((LD * LD) / (LT * RT)).toStringAsFixed(4);
        } else if (top == Top.rect && bottom == Bottom.rect) {
          result = ((LD * RD) / (LT * RT)).toStringAsFixed(4);
        }
      });

    } catch (e) {
      setState(() {
        result = 'Empty';
      });
    }
    print(result);
    if (result == 'NaN' || result == '0.0000' || result == 'Infinity') {
      setState(() {
        result = 'Empty';
      });
    }
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
                title: Container(
                    height: 60,
                    alignment: Alignment.bottomCenter,
                    child: Text('Cakes Calculator',
                        style: TextStyle(
                          fontFamily: 'Italianno',
                          fontSize: 60,
                        ))),
                backgroundColor: Color.fromRGBO(17, 52, 82, 1),
                shadowColor: Colors.white70,
              ),
              body: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TopButtons(
                          onTap: (){
                            setState(() {
                              top = Top.circle;
                              TextInputsRightTopState.vis = false;
                              TextInputsRightTopState.rightTopText.clear();
                            });
                          },
                          child: Icon(Icons.radio_button_off,
                            color: top == Top.circle ? Colors.white70 : Colors.black,
                            size: 80,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TopButtons(
                          onTap: (){
                            setState(() {
                              top = Top.square;
                              TextInputsRightTopState.vis = false;
                              TextInputsRightTopState.rightTopText.clear();
                            });
                          },
                          child: Icon(
                            Icons.check_box_outline_blank,
                            color: top == Top.square ? Colors.white70 : Colors.black,
                            size: 80,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TopButtons(
                          onTap: (){
                            setState(() {
                              top = Top.rect;
                              TextInputsRightTopState.vis = true;
                            });
                          },
                          child: Icon(
                            Icons.rectangle_outlined,
                            color: top == Top.rect ? Colors.white70 : Colors.black,
                            size: 80,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 45),
                        TextInputsLeftTop(),
                        SizedBox(width: 60),
                        TextInputsRightTop(),
                        SizedBox(width: 45),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BottomButtons(
                          onTap: (){
                            setState(() {
                              bottom = Bottom.circle;
                              TextInputsRightBottomState.vis = false;
                              TextInputsRightBottomState.rightBottomText.clear();
                            });
                          },
                          child: Icon(Icons.radio_button_off,
                            color: bottom == Bottom.circle ? Colors.white70 : Colors.black,
                            size: 80,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        BottomButtons(
                          onTap: (){
                            setState(() {
                              bottom = Bottom.square;
                              TextInputsRightBottomState.vis = false;
                              TextInputsRightBottomState.rightBottomText.clear();
                            });
                          },
                          child: Icon(
                            Icons.check_box_outline_blank,
                            color: bottom == Bottom.square ? Colors.white70 : Colors.black,
                            size: 80,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        BottomButtons(
                          onTap: (){
                            setState(() {
                              bottom = Bottom.rect;
                              TextInputsRightBottomState.vis = true;
                            });
                          },
                          child: Icon(
                            Icons.rectangle_outlined,
                            color: bottom == Bottom.rect ? Colors.white70 : Colors.black,
                            size: 80,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 45),
                        TextInputsLeftBottom(),
                        SizedBox(width: 60),
                        TextInputsRightBottom(),
                        SizedBox(width: 45),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: 45,
                        ),
                        Container(
                            // color: Colors.red,
                            alignment: Alignment.center,
                            width: 130,
                            height: 40,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(17,52,82,.7),
                                    spreadRadius: 3,
                                    blurRadius: 8,
                                    offset: Offset(1.0, 1.0)),
                              ],
                            ),
                            child: Text(
                              '$result',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            )),
                        SizedBox(
                          width: 70,
                        ),
                        Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: 3,
                                  blurRadius: 8,
                                  offset: Offset(1.0, 1.0)),
                            ],
                          ),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                // side: BorderSide(color: Colors.white)
                            ),
                            onPressed: calculateResult,
                            color: Color.fromRGBO(17, 52, 82, 1),
                            child: Text(
                              'Result',
                              style: TextStyle(fontSize: 24),
                            ),
                            textColor: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 45,
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
