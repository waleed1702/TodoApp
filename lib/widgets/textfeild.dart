import 'package:flutter/material.dart';

Widget textFeild({
  controller,
  lebal,
}) {
  final control = controller;

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(lebal),
        TextField(
          controller: control,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 8, 209, 182), // Color for the border
                width: 2.0,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
