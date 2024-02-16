import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String result = '0';
  double toPay = 0.00;
  String toParseInputUser = '';
  String realInputUser = '';
  bool qrVisibility = false;
  FocusNode? focusNode = FocusNode();
  bool hasFocus = false;
  bool isSelected = false;
  bool error = false;
  bool hasFloatingActionButton = false;
  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
          title: Text('Calculadora',
              style: TextStyle(fontWeight: FontWeight.bold)),

          foregroundColor: Colors.white,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.cyan.shade800, Colors.cyan.shade400])),
          ),
        ),
      body: calculator(height, width, qrVisibility),
      floatingActionButton: Visibility(
        visible: qrVisibility,
        child: ZoomIn(
          child: SizedBox(
            width: width*0.2,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.blue.shade900,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(height*0.02), ),
              child: Icon(Icons.qr_code, color: Colors.white, size: width*0.1,),
            
            ),
          ),
        ),
      )
    );
  }

  Widget evalResult(String result) {
    final numberFormat = NumberFormat.currency(locale: 'en_US', symbol: "\$");
    double width = MediaQuery.of(context).size.width;

    if (error == false) {
      if (numberFormat.format(double.parse(result)).length < 18) {
        return Text(
          numberFormat.format(double.parse(result)),
          maxLines: 1,
          overflow: TextOverflow.fade,
          style: TextStyle(
              color: !result.contains('-')
                  ? Colors.black
                  : Color.fromARGB(255, 167, 20, 10),
              fontSize: width / 15,
              fontWeight: FontWeight.bold),
        );
      } else {
        return Text(
          '${numberFormat.format(double.parse(result))}\n',
          maxLines: 2,
          overflow: TextOverflow.fade,
          style: TextStyle(
              color: Colors.black,
              fontSize: width / 23,
              fontWeight: FontWeight.bold),
        );
      }
    } else {
      return Text(
        result,
        maxLines: 1,
        overflow: TextOverflow.fade,
        style: TextStyle(
            color: Colors.black,
            fontSize: width / 15,
            fontWeight: FontWeight.bold),
      );
    }
  }

  void buttonPressed(String text) {
    setState(() {
      if (text == '%') {
        if (toParseInputUser.isNotEmpty &&
            toParseInputUser[toParseInputUser.length - 1] != '%') {
          toParseInputUser += '/100*';
          realInputUser += '%';
        }
      } else {
        toParseInputUser = toParseInputUser + text;
        realInputUser = realInputUser + text;
      }
    });
  }

  Widget getRow(String text1, String text2, String text3, String text4,
      FocusNode focusNode, BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 60,
          width: 80,
          child: RawMaterialButton(
            onPressed: () {
              if (text1 == 'AC') {
                setState(() {
                  error = false;
                  qrVisibility = false;
                  hasFocus = false;
                  isSelected = false;
                  toParseInputUser = '';
                  realInputUser = '';
                  result = '0';
                });
              } else {
                buttonPressed(text1);
              }
            },
            elevation: 2.0,
            fillColor: getBackgroundColor(text1),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Text(
              text1,
              style: TextStyle(
                  color: getTextColor(text1),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          height: 60,
          width: 80,
          child: RawMaterialButton(
              onPressed: () {
                if (text2 == 'CE') {
                  setState(() {
                    if (toParseInputUser.isNotEmpty) {
                      toParseInputUser = toParseInputUser.substring(
                          0, toParseInputUser.length - 1);
                      realInputUser =
                          realInputUser.substring(0, realInputUser.length - 1);
                    }
                  });
                } else {
                  buttonPressed(text2);
                }
              },
              elevation: 2.0,
              fillColor: getBackgroundColor(text2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                text2,
                style: TextStyle(
                    color: getTextColor(text2),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )),
        ),
        Container(
          height: 60,
          width: 80,
          child: RawMaterialButton(
            onPressed: () {
              buttonPressed(text3);
            },
            elevation: 2.0,
            fillColor: getBackgroundColor(text3),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Text(
              text3,
              style: TextStyle(
                  color: getTextColor(text3),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          height: 60,
          width: 80,
          child: RawMaterialButton(
            onPressed: () {
              try {
                if (text4 == '=') {
                  Parser parser = Parser();
                  String expressionString = toParseInputUser.replaceAll('%',
                      '*0.01'); // Reemplazar "%" con "*0.01" para calcular el porcentaje
                  Expression expression = parser.parse(expressionString);
                  ContextModel contextModel = ContextModel();
                  double eval =
                      expression.evaluate(EvaluationType.REAL, contextModel);
                  setState(() {
                    if (!eval.isNaN) {
                      error = false;
                    }
                    hasFocus = true;
                    isSelected = true;
                    result = eval.toString();
                    if (!result.contains('-')) {
                      qrVisibility = true;
                      hasFloatingActionButton = true;
                    }
                    toPay = eval * 10 / 100;
                  });
                } else {
                  buttonPressed(text4);
                }
              } catch (e) {
                setState(() {
                  error = true;
                  result = 'Error de operación';
                });
              }
            },
            elevation: 2.0,
            fillColor: Colors.blue.shade900,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Text(
              text4,
              style: const TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }

  bool isOprator(String text) {
    var list = ['AC', 'CE', '%'];

    for (var item in list) {
      if (text == item) {
        return true;
      }
    }
    return false;
  }

  Color getBackgroundColor(String text) {
    if (isOprator(text)) {
      return Color(0xFFB7B7B7);
    } else {
      return Color.fromRGBO(33, 150, 243, 1);
    }
  }

  bool TextOprator(String text) {
    var list = ['AC', 'CE', '%'];

    for (var item in list) {
      if (text == item) {
        return true;
      }
    }
    return false;
  }

  Color getTextColor(String text) {
    if (isOprator(text)) {
      return Colors.black;
    } else {
      return Colors.white;
    }
  }

  Widget calculator(double maxHeight, double maxWidth, bool qrVisibility,){
    return Container(
        padding: const EdgeInsets.only(top: 10),
        alignment: qrVisibility == true ? Alignment.topCenter : Alignment.center,
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Card(
                    child: Container(
                      alignment: Alignment.centerRight,
                      height: maxHeight * 0.07,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: realInputUser.length < 18
                            ? RichText(
                                maxLines: 1,
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.end,
                                text: TextSpan(
                                    text: realInputUser,
                                    style: TextStyle(
                                      color: Color(0xFF414141),
                                      fontSize: maxWidth / 15,
                                    )))
                            : RichText(
                                maxLines: 2,
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.end,
                                text: TextSpan(
                                    text: '$realInputUser\n',
                                    style: TextStyle(
                                      color: Color(0xFF414141),
                                      fontSize: maxWidth / 20,
                                    ))),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Card(
                    child: Container(
                        alignment: Alignment.centerRight,
                        height: maxHeight * 0.07,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: evalResult(result))),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Gap(10),
                getRow('AC', 'CE', '%', '/', focusNode!, context),
                const Gap(10),
                getRow('1', '2', '3', '*', focusNode!, context),
                const Gap(10),
                getRow('4', '5', '6', '-', focusNode!, context),
                const Gap(10),
                getRow('7', '8', '9', '+', focusNode!, context),
                const Gap(10),
                getRow('00', '0', '.', '=', focusNode!, context),
              ],
            ),
          ],
        ),
      );
  }

}

class QrGenerator extends StatelessWidget {
  final String data;

  const QrGenerator({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final double? qrData = double.tryParse(data);
    return Padding(
        padding: const EdgeInsets.all(40), child: QrImageView(data: '$qrData'));
  }
}
