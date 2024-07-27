import 'package:calculator/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CostomButton extends StatelessWidget {
  CostomButton(
      {super.key,
      required String this.text,
      required this.textColor,
      required this.btnwidth,
      required this.textback,
      required VoidCallback this.btn});
  final String text;
  final VoidCallback? btn;
  Color textColor = Colors.black;
  Color textback = Colors.yellow;
  final btnwidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 70,
      width: btnwidth,
      decoration: BoxDecoration(
          // Here we apply shadow
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: textback
                //blurRadius: 3,
                // offset: Offset(1.0, 1.0)
                )
          ]),
      child: TextButton(
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          onPressed: btn),
    );
  }
}

// class CostomButton extends StatefulWidget {
//   const CostomButton({super.key, required String this.text,required VoidCallback this.btn});
//   final String text;
//   final VoidCallback? btn;

//   @override
//   State<CostomButton> createState() => _CostomButtonState();
// }

// class _CostomButtonState extends State<CostomButton> {
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         height: 80,
//         color: Colors.green,
//         child: TextButton(
//           child: Text("${widget.text}"),
//           onPressed:  btn;
//         ),
//       ),
//     );
//   }
// }
