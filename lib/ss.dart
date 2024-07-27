import 'package:flutter/material.dart';

class Ss extends StatefulWidget {
  String txt;

  Function btn;

  Ss({super.key, required String this.txt, required Function this.btn});

  @override
  State<Ss> createState() => _SsState();
}

class _SsState extends State<Ss> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("${widget.txt}"),
        ElevatedButton(
            onPressed: () {
              setState(() {});
            },
            child: Text("${widget.btn}"))
      ],
    );
  }
}
