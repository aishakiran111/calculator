import 'package:calculator/color.dart';
import 'package:calculator/components/costom_button.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var input = "";
  var result = "";
  bool isEqualPress = false;
  void btnclick(String btnText) {
    isEqualPress = false;
    if (btnText == "=") {
      equalPressOperation();
    } else if (btnText == "C") {
      input = " ";
      result = " ";
    } else if (btnText == "Del") {
      if (input.isNotEmpty) {
        input = input.substring(0, input.length - 1);
      } else if (input.isEmpty) {
        result = " ";
      }
    } else if ("+-/.x%".contains(btnText)) {
      if (input.isNotEmpty && "+-/.x%".contains(input[input.length - 1])) {
        input = input.substring(0, input.length - 1) + btnText;
      } else {
        input += btnText;
      }
    } else {
      input += btnText;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: oprwtorcolot,
        title: Text(
          "Caculator",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: isEqualPress ? 40 : 30,
              color: isEqualPress ? Colors.black54 : Colors.white),
        ),
        centerTitle: true,
        //  actions: [Icon(Icons.color_lens)],
      ),

      ///------------------body-----
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.bottomRight,
              width: double.infinity,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "$result",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: isEqualPress ? 40 : 30,
                          color: isEqualPress ? Colors.black54 : Colors.white),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "$input",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: isEqualPress ? 30 : 40,
                          color: isEqualPress ? Colors.black : Colors.white70),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              color: Colors.black,
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CostomButton(
                          btnwidth: 100,
                          textColor: whitecolor,
                          textback: textColor,
                          text: "C",
                          btn: () {
                            setState(() {
                              btnclick("C");
                            });
                          },
                        ),
                        CostomButton(
                            btnwidth: 100,
                            textColor: whitecolor,
                            textback: textColor,
                            text: "Del",
                            btn: () {
                              setState(() {
                                btnclick("Del");
                              });
                            }),
                        CostomButton(
                            btnwidth: 100,
                            textColor: whitecolor,
                            textback: oprwtorcolot,
                            text: "%",
                            btn: () {
                              setState(() {
                                btnclick("%");
                              });
                            }),
                        CostomButton(
                            btnwidth: 100,
                            textColor: whitecolor,
                            textback: oprwtorcolot,
                            text: "/",
                            btn: () {
                              setState(() {
                                btnclick("/");
                              });
                            }),
                      ],
                    ),
                    /////////second row
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CostomButton(
                          btnwidth: 100,
                          textColor: buttonColor,
                          textback: orangeColor,
                          text: "7",
                          btn: () {
                            setState(() {
                              btnclick("7");
                            });
                          }),
                      CostomButton(
                          btnwidth: 100,
                          textColor: buttonColor,
                          textback: orangeColor,
                          text: "8",
                          btn: () {
                            setState(() {
                              btnclick("8");
                            });
                          }),
                      CostomButton(
                          btnwidth: 100,
                          textColor: buttonColor,
                          textback: orangeColor,
                          text: "9",
                          btn: () {
                            setState(() {
                              btnclick("9");
                            });
                          }),
                      CostomButton(
                          btnwidth: 100,
                          textColor: whitecolor,
                          textback: oprwtorcolot,
                          text: "x",
                          btn: () {
                            setState(() {
                              btnclick("x");
                            });
                          }),
                    ],
                  ),
                  //3rd row of button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CostomButton(
                          btnwidth: 100,
                          textColor: buttonColor,
                          textback: orangeColor,
                          text: "4",
                          btn: () {
                            setState(() {
                              btnclick("4");
                            });
                          }),
                      CostomButton(
                          btnwidth: 100,
                          textColor: buttonColor,
                          textback: orangeColor,
                          text: "5",
                          btn: () {
                            setState(() {
                              btnclick("5");
                            });
                          }),
                      CostomButton(
                          btnwidth: 100,
                          textColor: buttonColor,
                          textback: orangeColor,
                          text: "6",
                          btn: () {
                            setState(() {
                              btnclick("6");
                            });
                          }),
                      CostomButton(
                          btnwidth: 100,
                          textColor: whitecolor,
                          textback: oprwtorcolot,
                          text: "-",
                          btn: () {
                            setState(() {
                              btnclick("-");
                            });
                          }),
                    ],
                  ),
                  // 4th row of button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CostomButton(
                          btnwidth: 100,
                          textColor: buttonColor,
                          textback: orangeColor,
                          text: "1",
                          btn: () {
                            setState(() {
                              btnclick("1");
                            });
                          }),
                      CostomButton(
                          btnwidth: 100,
                          textColor: buttonColor,
                          textback: orangeColor,
                          text: "2",
                          btn: () {
                            setState(() {
                              btnclick("2");
                            });
                          }),
                      CostomButton(
                          btnwidth: 100,
                          textColor: buttonColor,
                          textback: orangeColor,
                          text: "3",
                          btn: () {
                            setState(() {
                              btnclick("3");
                            });
                          }),
                      CostomButton(
                          btnwidth: 100,
                          textColor: whitecolor,
                          textback: oprwtorcolot,
                          text: "+",
                          btn: () {
                            setState(() {
                              btnclick("+");
                            });
                          }),
                    ],
                  ),
                  //     5th row of button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // CostomButton(btnwidth: 100,
                      //     textColor: buttonColor,
                      //     textback: orangeColor,
                      //     text: "1",
                      //     btn: () {
                      //       setState(() {
                      //         btnclick("1");
                      //       });
                      //     }),

                      CostomButton(
                          btnwidth: 100,
                          textColor: buttonColor,
                          textback: orangeColor,
                          text: ".",
                          btn: () {
                            setState(() {
                              btnclick(".");
                            });
                          }),
                      CostomButton(
                          btnwidth: 100,
                          textColor: buttonColor,
                          textback: orangeColor,
                          text: "0",
                          btn: () {
                            setState(() {
                              btnclick("0");
                            });
                          }),
                      CostomButton(
                        btnwidth: 200,
                        textColor: whitecolor,
                        textback: textColor,
                        text: "=",
                        btn: () {
                          setState(() {
                            btnclick("=");
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void equalPressOperation() {
    String finalUserInput = input;
    finalUserInput = input.replaceAll("x", "*").replaceAll("%", "/100");
    //opration
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    result = eval.toString();
  }
}
