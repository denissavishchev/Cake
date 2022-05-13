import 'package:flutter/material.dart';

class TextInputsLeftTop extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    const hintText = 'DiametrT';

    return Container(
      child: Flexible(
        child: TextFormField(
          cursorColor: Colors.white,
          keyboardType: TextInputType.number,
          style: TextStyle(color: Colors.white, fontSize: 30),
          decoration: const InputDecoration(
            hintStyle: TextStyle(
                color: Colors.white
            ),
            // fillColor: Colors.transparent, filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),

            ),
            contentPadding: const EdgeInsets.all(1),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}

class TextInputsRightTop extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    const hintText = 'HeightT';

    return Container(
      child: Flexible(
        child: TextFormField(
          cursorColor: Colors.white,
          keyboardType: TextInputType.number,
          style: TextStyle(color: Colors.white, fontSize: 30),
          decoration: const InputDecoration(
            hintStyle: TextStyle(
                color: Colors.white
            ),
            // fillColor: Colors.deepOrange, filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),

            ),
            contentPadding: const EdgeInsets.all(1),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}


class TextInputsLeftBottom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    const hintText = 'DiametrB';

    return Container(
      child: Flexible(
        child: TextFormField(
          cursorColor: Colors.white,
          keyboardType: TextInputType.number,
          style: TextStyle(color: Colors.white, fontSize: 30),
          decoration: const InputDecoration(
            hintStyle: TextStyle(
                color: Colors.white
            ),
            // fillColor: Colors.deepOrange, filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),

            ),
            contentPadding: const EdgeInsets.all(1),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}


class TextInputsRightBottom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    const hintText = 'HeightB';

    return Container(
      child: Flexible(
        child: TextFormField(
          cursorColor: Colors.white,
          keyboardType: TextInputType.number,
          style: TextStyle(color: Colors.white, fontSize: 30),
          decoration: const InputDecoration(
            hintStyle: TextStyle(
                color: Colors.white
            ),
            // fillColor: Colors.deepOrange, filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),

            ),
            contentPadding: const EdgeInsets.all(1),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}