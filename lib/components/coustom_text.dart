import 'dart:js_interop';

import 'package:flutter/material.dart';

class CoustomText extends StatefulWidget {
  const CoustomText({
    super.key,
  });

  @override
  State<CoustomText> createState() => _CoustomTextState();
}

class _CoustomTextState extends State<CoustomText> {
  String txt = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.amberAccent,
      child: Column(
        children: [
          Text(txt),
          Container(
            child: Text("taxtControl,"),
            color: Colors.red,
          ),
          Text("kkkkkkkkkkkkkkkk"),
        ],
      ),
    );
  }
}

mixin _textCobtrol {}
