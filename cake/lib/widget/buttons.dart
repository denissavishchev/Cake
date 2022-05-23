import 'package:flutter/material.dart';

class TopButtons extends StatelessWidget {
  final Color? color;
  final Widget? child;
  final Function()? onTap;


  const TopButtons({
    Key? key,
    this.color = const Color.fromRGBO(17,52,82,1),
    @required this.child,
    @required this.onTap,
  }) : super(key: key);


  @override
  Widget build(BuildContext) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: child,
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(10),
          ),
          boxShadow: [BoxShadow(
            color: Colors.white70,
            spreadRadius: 4,
            blurRadius: 8,
            offset: Offset(1.0, 1.0),
          ),],
        ),
      ),
    );
  }
}


class BottomButtons extends StatelessWidget {
  final Color? color;
  final Widget? child;
  final Function()? onTap;



  const BottomButtons({
    Key? key,
    this.color = const Color.fromRGBO(17,52,82,1),
    @required this.child,
    @required this.onTap,
  }) : super(key: key);


  @override
  Widget build(BuildContext) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: child,
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(10),
          ),
          boxShadow: [BoxShadow(
            color: Colors.white70,
            spreadRadius: 4,
            blurRadius: 8,
            offset: Offset(1.0, 1.0),
          ),],
        ),
      ),
    );
  }
}