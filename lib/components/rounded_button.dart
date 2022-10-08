import 'package:flutter/material.dart';

class Rounded_Button extends StatelessWidget {
  final Color color;
  final String name;
  final VoidCallback onPressed;

  const Rounded_Button(
      {Key? key,
      required this.color,
      required this.name,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(44),
        elevation: 2,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 350,
          height: 43,
          child: Text(
            name,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
