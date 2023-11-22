// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BMCardWidget extends StatefulWidget {
  const BMCardWidget({super.key});

  @override
  _BMCardWidgetState createState() => _BMCardWidgetState();
}

class _BMCardWidgetState extends State<BMCardWidget> {
  bool showNumber = false;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        if (kDebugMode) {
          print('He apretado la tarjeta');
        }
      },
      child: Padding(
        padding: EdgeInsets.all(width * 0.05),
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: const Color(0xFF9B9999),
          elevation: 20,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(width * 0.03),
          ),
          child: ClipRRect(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 183, 197, 175),
                    Color.fromARGB(255, 211, 227, 202)
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  tileMode: TileMode.clamp,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: width * 0.85 * 0.8,
                        height: height * 0.22 * 0.35,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 101, 202, 17),
                              Color.fromARGB(255, 122, 244, 20),
                            ],
                            stops: [0.1, 1.0],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(width * 0.03),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(width * 0.03),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/images/banmet.png'),
                              Text('Banco Metropolitano',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: width * 0.04,
                                      fontFamily: 'Roboto')),
                              Text('S.A.',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: width * 0.04,
                                      fontFamily: 'Roboto')),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.03),
                        child: IconButton(
                            icon: const Icon(Icons.more_horiz),
                            iconSize: width * 0.1,
                            onPressed: () {
                              setState(() {
                                showNumber = !showNumber;
                              });
                            }),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: height * 0.01),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Transform.scale(
                          scaleY: 2.5,
                          child: Icon(
                            Icons.arrow_left,
                            color: const Color.fromARGB(255, 122, 244, 20),
                            size: height * 0.05,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        !showNumber
                            ? Text('XXXX  XXXX  XXXX  0000',
                                style: TextStyle(
                                    fontSize: width * 0.06,
                                    fontFamily: 'Roboto'))
                            : Text('9225  9598  0000  0000',
                                style: TextStyle(
                                    fontSize: width * 0.06,
                                    fontFamily: 'Roboto')),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(top: height * 0.01, left: width * 0.05),
                    alignment: Alignment.centerLeft,
                    child: Text('LIAN HERNÁNDEZ DELGADO',
                        style: TextStyle(
                            fontSize: height * 0.02, fontFamily: 'Roboto')),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: height * 0.01),
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                          right: width * 0.05,
                          left: width * 0.05,
                          bottom: height * 0.01),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'CUP',
                            style: TextStyle(
                                fontSize: height * 0.018, fontFamily: 'Roboto'),
                          ),
                          Text(
                            'VENCE: 00/00',
                            style: TextStyle(
                                fontSize: height * 0.018, fontFamily: 'Roboto'),
                          ),
                          Icon(
                            Icons.check,
                            color: Colors.green[900],
                            size: height * 0.04,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
