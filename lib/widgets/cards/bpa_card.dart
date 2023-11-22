// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BPACardWidget extends StatefulWidget {
  const BPACardWidget({super.key});

  @override
  _BPACardWidgetState createState() => _BPACardWidgetState();
}

class _BPACardWidgetState extends State<BPACardWidget> {
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
          color: const Color.fromARGB(255, 219, 235, 228),
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
                  Color.fromARGB(255, 207, 227, 232),
                  Color.fromARGB(255, 185, 197, 192),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                tileMode: TileMode.clamp,
              )),
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
                              Image.asset('assets/images/logo_bpa_png.png')
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
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color.fromARGB(113, 41, 122, 108),
                            Color.fromARGB(255, 24, 73, 65),
                            Color.fromARGB(64, 41, 122, 108),
                          ]),
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(width * 0.5))),
                      height: height * 0.007,
                      width: width * 0.6,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color.fromARGB(113, 41, 122, 109),
                            Color.fromARGB(255, 41, 122, 108),
                            Color.fromARGB(64, 24, 73, 65)
                          ]),
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(width * 0.5))),
                      height: height * 0.007,
                      width: width * 0.6,
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(height * 0.01),
                        side: BorderSide(
                            color: const Color.fromARGB(255, 24, 73, 65),
                            width: height * 0.003)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_left,
                          color: const Color.fromARGB(255, 177, 137, 5),
                          size: height * 0.05,
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        !showNumber
                            ? Text('XXXX  XXXX  XXXX  0000',
                                style: TextStyle(
                                    fontSize: width * 0.06, fontFamily: 'Roboto'))
                            : Text('9225  1299  0000  0000',
                                style: TextStyle(
                                    fontSize: width * 0.06,
                                    fontFamily: 'Roboto')),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color.fromARGB(113, 41, 122, 109),
                            Color.fromARGB(255, 41, 122, 108),
                            Color.fromARGB(64, 24, 73, 65)
                          ]),
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(width * 0.5))),
                      height: height * 0.007,
                      width: width * 0.6,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color.fromARGB(113, 41, 122, 108),
                            Color.fromARGB(255, 24, 73, 65),
                            Color.fromARGB(64, 41, 122, 108),
                          ]),
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(width * 0.5))),
                      height: height * 0.007,
                      width: width * 0.6,
                    ),
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
