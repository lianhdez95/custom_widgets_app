import 'package:custom_widgets_app/widgets/appbars/custom_gradient_appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:math_expressions/math_expressions.dart';

class NewCalculatorScreen extends StatefulWidget {
  const NewCalculatorScreen({super.key});

  @override
  State<NewCalculatorScreen> createState() => _NewCalculatorScreenState();
}

//TODO: Reemplazar fuentes por 'Orbitron' de Google Fonts

class _NewCalculatorScreenState extends State<NewCalculatorScreen> {
  String result = '0';
  double toPay = 0.00;
  String toParseInputUser = '';
  String realInputUser = '';
  bool qrVisibility = false;
  FocusNode focusNode = FocusNode();
  bool hasFocus = false;
  bool isSelected = false;
  bool error = false;
  bool hasFloatingActionButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomGradientAppbar(
        title: 'Calculadora',
        beginAlignment: Alignment.centerLeft,
        endAlignment: Alignment.centerRight,
        beginColor: Colors.cyan.shade800,
        endColor: Colors.cyan.shade400,
      ),
      body: _displayCalculator(),
    );
  }

  Widget _displayCalculator() {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.03, vertical: height * 0.02),
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        // color: Colors.amber,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.1,
              width: double.infinity,
              child: operationDisplay(height),
            ),
            SizedBox(
              height: height * 0.1,
              width: double.infinity,
              child: evalResultDisplay(context, result),
            ),
            Divider(
              height: height * 0.05,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      acButton(),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      inputButton('7'),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      inputButton('4'),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      inputButton('1'),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      inputButton('00'),
                      SizedBox(
                        height: height * 0.02,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Column(
                    children: [
                      backspaceButton(),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      inputButton('8'),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      inputButton('5'),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      inputButton('2'),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      inputButton('0'),
                      SizedBox(
                        height: height * 0.02,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Column(
                    children: [
                      inputButton('/', color: Colors.cyan.shade800),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      inputButton('9'),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      inputButton('6'),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      inputButton('3'),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      inputButton('.'),
                      SizedBox(
                        height: height * 0.02,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Column(
                    children: [
                      inputButton('*', color: Colors.cyan.shade800),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      inputButton('-', color: Colors.cyan.shade800),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      inputButton('+', color: Colors.cyan.shade800),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      equalButton(),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget acButton() {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return RawMaterialButton(
      fillColor: Colors.cyan.shade800,
      constraints: BoxConstraints(
        minHeight: height * 0.075,
        minWidth: width * 0.21,
      ),
      onPressed: () {
        setState(() {
          error = false;
          qrVisibility = false;
          hasFocus = false;
          isSelected = false;
          toParseInputUser = '';
          realInputUser = '';
          result = '0';
        });
      },
      elevation: 2.0,
      // fillColor: getBackgroundColor(text1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        'AC',
        style: GoogleFonts.orbitron(
            color: Colors.white,
            fontSize: height * 0.035,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget inputButton(String text, {Color? color}) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return RawMaterialButton(
      fillColor: color ?? Colors.cyan.shade400,
      constraints: BoxConstraints(
        minHeight: height * 0.075,
        minWidth: width * 0.21,
      ),
      onPressed: () => buttonPressed(text),
      elevation: 2.0,
      // fillColor: getBackgroundColor(text1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: GoogleFonts.orbitron(
            color: Colors.white,
            fontSize: height * 0.035,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget backspaceButton() {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return RawMaterialButton(
        fillColor: Colors.cyan.shade800,
        constraints: BoxConstraints(
          minHeight: height * 0.075,
          minWidth: width * 0.21,
        ),
        onPressed: () {
          setState(() {
            if (toParseInputUser.isNotEmpty) {
              toParseInputUser =
                  toParseInputUser.substring(0, toParseInputUser.length - 1);
              realInputUser =
                  realInputUser.substring(0, realInputUser.length - 1);
            }
          });
        },
        elevation: 2.0,
        // fillColor: getBackgroundColor(text2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Icon(
          Icons.backspace,
          color: Colors.white,
          size: height * 0.04,
        ));
  }

  Widget equalButton() {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return RawMaterialButton(
        fillColor: Colors.cyan.shade800,
        constraints: BoxConstraints(
          minHeight: height * 0.17,
          minWidth: width * 0.21,
        ),
        onPressed: () {
          try {
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
          } catch (e) {
            setState(() {
              error = true;
              result = 'Error';
            });
          }
        },
        elevation: 2.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Icon(
          Icons.qr_code_2,
          size: height * 0.07,
          color: Colors.white,
        ));
  }

  //TODO: Separar el Card en widget independiente reutilizable
  Widget evalResultDisplay(BuildContext context, String result) {
    final numberFormat = NumberFormat.currency(locale: 'en_US', symbol: "\$");
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    if (error == false) {
      if (numberFormat.format(double.parse(result)).length < 12) {
        return Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(height * 0.02)),
            child: Container(
                height: double.infinity,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.centerRight,
                child: Text(
                  //
                  numberFormat.format(double.parse(result)),
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  style: GoogleFonts.orbitron(
                      color: !result.contains('-')
                          ? Colors.black
                          : const Color.fromARGB(255, 167, 20, 10),
                      fontSize: height / 26,
                      fontWeight: FontWeight.bold),
                )));
      } else {
        return Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(height * 0.02)),
            child: Container(
                height: double.infinity,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.centerRight,
                child: Text(
                  '${numberFormat.format(double.parse(result))}\n',
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.orbitron(
                      color: Colors.black,
                      fontSize: height / 37,
                      fontWeight: FontWeight.bold),
                )));
      }
    } else {
      return Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(height * 0.02)),
          child: Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.centerRight,
              child: Text(
                result,
                maxLines: 1,
                overflow: TextOverflow.visible,
                style: GoogleFonts.orbitron(
                    color: Colors.black,
                    fontSize: height / 26,
                    fontWeight: FontWeight.bold),
              )));
    }
  }

  Card operationDisplay(double height) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(height * 0.02)),
      child: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        alignment: Alignment.centerRight,
        child: realInputUser.length < 13
            ? RichText(
                maxLines: 1,
                overflow: TextOverflow.visible,
                textAlign: TextAlign.end,
                text: TextSpan(
                    text: realInputUser,
                    style: GoogleFonts.orbitron(
                        color: const Color(0xFF414141),
                        fontSize: height / 26,
                        fontWeight: FontWeight.bold)))
            // color: const Color(0xFF414141),
            //   fontSize: height / 26,
            : RichText(
                maxLines: 2,
                overflow: TextOverflow.visible,
                textAlign: TextAlign.end,
                text: TextSpan(
                    text: '$realInputUser\n',
                    style: GoogleFonts.orbitron(
                        color: const Color(0xFF414141),
                        fontSize: height / 37,
                        fontWeight: FontWeight.bold))),
      ),
    );
  }

  buttonPressed(String text) {
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
}
