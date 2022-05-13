import 'package:flutter/material.dart';

class ToggleButtonsTop extends StatefulWidget {
  @override
  _ToggleButtonsTopState createState() => _ToggleButtonsTopState();
}

class _ToggleButtonsTopState extends State<ToggleButtonsTop> {
  List<bool> isSelected = [true, false, false];
  List<IconData> iconList = [Icons.radio_button_off, Icons.check_box_outline_blank, Icons.rectangle_outlined];

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.only(top: 10.0),
    child: Ink(
      width: 300,
      height: 100,
      color: Colors.transparent,
      child: GridView.count(
        primary: true,
        crossAxisCount: 3, //set the number of buttons in a row
        crossAxisSpacing: 20, //set the spacing between the buttons
        childAspectRatio: 1, //set the width-to-height ratio of the button,
        //>1 is a horizontal rectangle
        children: List.generate(isSelected.length, (index) {
          //using Inkwell widget to create a button
          return InkWell(
              splashColor: Color.fromRGBO(17,52,82,1), //the default splashColor is grey
              onTap: () {
                //set the toggle logic
                setState(() {
                  for (int indexBtn = 0;
                  indexBtn < isSelected.length;
                  indexBtn++) {
                    if (indexBtn == index) {
                      isSelected[indexBtn] = true;
                    } else {
                      isSelected[indexBtn] = false;
                    }
                  }
                });
              },
              child: Ink(
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: isSelected[index] ? Color.fromRGBO(0,0,0,1) : Colors.white70,
                    spreadRadius: 4,
                    blurRadius: 8,
                    offset: Offset(1.0, 1.0),
                  ),
                  ],
                  //set the background color of the button when it is selected/ not selected
                  color: Color.fromRGBO(17,52,82,1),
                  // here is where we set the rounded corner
                  borderRadius: BorderRadius.circular(8),
                  //don't forget to set the border,
                  //otherwise there will be no rounded corner
                  border: Border.all(color: Colors.white70),
                ),
                child: Icon(iconList[index], size: 80,
                    //set the color of the icon when it is selected/ not selected
                    color: isSelected[index] ? Colors.white70 : Colors.black),
              ));
        }),
      ),
    ),
  );
}

