import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
  hintText: 'Type your Message here...',
  border: InputBorder.none,
);

const kMessageContainsDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.blueAccent, width: 2),
  ),
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
  border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
    Radius.circular(32),
  )),
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blueAccent, width: 1),
      borderRadius: BorderRadius.all(
        Radius.circular(32),
      )),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1),
    borderRadius: BorderRadius.all(
      Radius.circular(32),
    ),
  ),
);
