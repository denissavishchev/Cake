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


  void calculateResult() {
    setState(() {
      // result = 'Result x ';

      final LT = double.parse(TextInputsLeftTopState.leftTopText.text);
      final RT = double.parse(TextInputsRightTopState.rightTopText.text);
      final LD = double.parse(TextInputsLeftBottomState.leftBottomText.text);
      final RD = double.parse(TextInputsRightBottomState.rightBottomText.text);
      final indexT = ToggleButtonsTopState.isSelected;
      final indexB = ToggleButtonsBottomState.isSelected;

      List<int> listT = [];
      indexT.forEach((element) => element == true ? listT.add(1) : listT.add(0));
      var T = listT.join('');
      int xT = int.parse(T);

      List<int> listB = [];
      indexB.forEach((element) => element == true ? listB.add(1) : listB.add(0));
      var B = listB.join('');
      int xB = int.parse(B);

      if (xT == 100 && xB == 100) {
        result = ((LD * LD) / (LT * LT)).toStringAsFixed(4);
      }else if (xT == 100 && xB == 10){
        result = ((LD * LD) / ((LT / 2) * (LT / 2) * 3.1415)).toStringAsFixed(4);
      }else if (xT == 100 && xB == 1){
        result = ((LD * RD) / ((LT / 2) * (LT / 2) * 3.1415)).toStringAsFixed(4);
      }

      else if (xT == 10 && xB == 100){
        result = ((LD / 2) * ((LD / 2) * 3.14) / (LT * LT)).toStringAsFixed(4);
      }else if (xT == 10 && xB == 10){
        result = ((LD * LD) / (LT * LT)).toStringAsFixed(4);
      }else if (xT == 10 && xB == 1){
        result = ((LD * RD) / (LT * LT)).toStringAsFixed(4);
      }

      else if (xT == 1 && xB == 100){
        result = (((LD / 2) * (LD / 2) * 3.1415) / (LT * RT)).toStringAsFixed(4);
      }else if (xT == 1 && xB == 10){
        result = ((LD * LD) / (LT * RT)).toStringAsFixed(4);
      }else if (xT == 1 && xB == 1) {
        result = ((LD * RD) / (LT * RT)).toStringAsFixed(4);
      }
      print(result);
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
                title: Container(
                    height: 60,
                    alignment: Alignment.bottomCenter,
                    child: Text('CakesCalculator',
                    style: TextStyle(fontFamily: 'Italianno', fontSize: 60,))),
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
                      child: ToggleButtonsBottom(),
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
                          child: Text('$result', textAlign: TextAlign.left, style: TextStyle(fontSize: 30, color: Colors.white),)),
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
