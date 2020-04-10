import 'package:flutter/material.dart';


const textInputDecoration = InputDecoration(
    suffixIcon:Icon(
    Icons.search,
    color: Colors.grey),
    hintText:'Enter a keyword. Eg: edit profile',
    hintStyle: TextStyle(fontSize: 12.0),
    fillColor: Colors.white,
    filled: true,
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white , width: 0.1)
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.amber , width: 0.1)
    ),

);