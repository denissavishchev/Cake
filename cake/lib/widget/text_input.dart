import 'package:flutter/material.dart';

class TextInputsLeftTop extends StatefulWidget {
  @override
  State<TextInputsLeftTop> createState() => TextInputsLeftTopState();
}

class TextInputsLeftTopState extends State<TextInputsLeftTop> {
  static var leftTopText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // const hintText = 'Diameter';
    // bool tcVis = true;

    return Container(
      child: Flexible(
        child: TextFormField(
          controller: leftTopText,
          cursorColor: Colors.white,
          keyboardType: TextInputType.number,
          style: TextStyle(color: Colors.white, fontSize: 28),
          decoration: const InputDecoration(
            hintStyle: TextStyle(color: Colors.white),
            // fillColor: Colors.transparent, filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            contentPadding: const EdgeInsets.all(1),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            // hintText: hintText,
          ),
        ),
      ),
    );
  }
}

class TextInputsRightTop extends StatefulWidget {
  @override
  State<TextInputsRightTop> createState() => TextInputsRightTopState();
}

class TextInputsRightTopState extends State<TextInputsRightTop> {
  static var rightTopText = TextEditingController();
  // static bool tcVis = false;
  static var vis = false;

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Flexible(
        child: TextFormField(
          enabled: vis,
          controller: rightTopText,
          cursorColor: Colors.white,
          keyboardType: TextInputType.number,
          style: TextStyle(color: Colors.white, fontSize: 28),
          decoration: const InputDecoration(
            hintStyle: TextStyle(color: Colors.white),
            // fillColor: Colors.deepOrange, filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            contentPadding: const EdgeInsets.all(1),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class TextInputsLeftBottom extends StatefulWidget {
  @override
  State<TextInputsLeftBottom> createState() => TextInputsLeftBottomState();
}

class TextInputsLeftBottomState extends State<TextInputsLeftBottom> {
  static var leftBottomText = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Flexible(
        child: TextFormField(
          controller: leftBottomText,
          cursorColor: Colors.white,
          keyboardType: TextInputType.number,
          style: TextStyle(color: Colors.white, fontSize: 28),
          decoration: const InputDecoration(
            hintStyle: TextStyle(color: Colors.white),
            // fillColor: Colors.deepOrange, filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            contentPadding: const EdgeInsets.all(1),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class TextInputsRightBottom extends StatefulWidget {
  @override
  State<TextInputsRightBottom> createState() => TextInputsRightBottomState();
}

class TextInputsRightBottomState extends State<TextInputsRightBottom> {
  static var rightBottomText = TextEditingController();
  // static bool tcVis = false;
  static var vis = false;

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Flexible(
        child: TextFormField(
          enabled: vis,
          controller: rightBottomText,
          cursorColor: Colors.white,
          keyboardType: TextInputType.number,
          style: TextStyle(color: Colors.white, fontSize: 28),
          decoration: const InputDecoration(
            hintStyle: TextStyle(color: Colors.white),
            // fillColor: Colors.deepOrange, filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            contentPadding: const EdgeInsets.all(1),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
