// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BicsaCardWidget extends StatefulWidget {
  const BicsaCardWidget({super.key});

  @override
  _BicsaCardWidgetState createState() => _BicsaCardWidgetState();
}

class _BicsaCardWidgetState extends State<BicsaCardWidget> {
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
          elevation: 20,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(width * 0.03),
          ),
          child: ClipRRect(
            child: Container(
              decoration: const BoxDecoration(color: Colors.black),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(width*0.4)),
                    color: Color.fromARGB(255, 197, 171, 93)
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
                          height: height * 0.22 * 0.5,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(width * 0.03),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: width * 0.03,
                                left: width * 0.03),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/images/BICSA_logo.png',
                                  width: width * 0.4,
                                  height: height * 0.4,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: width * 0.03),
                          child: IconButton(
                              icon: const Icon(
                                Icons.more_horiz,
                                color: Colors.black,
                              ),
                              iconSize: width * 0.1,
                              onPressed: () {
                                setState(() {
                                  showNumber = !showNumber;
                                });
                              }),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: height * 0.010),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.arrow_back_ios_sharp,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          !showNumber
                              ? Text('XXXX  XXXX  XXXX  0000',
                                  style: TextStyle(
                                      fontSize: width * 0.06,
                                      fontFamily: 'Roboto'))
                              : Text('9225  1299  0000  0000',
                                  style: TextStyle(
                                      fontSize: width * 0.06,
                                      fontFamily: 'Roboto')),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: width * 0.05),
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
                                  fontSize: height * 0.018,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w900,
                                  ),
                            ),
                            Text(
                              'VENCE: 00/00',
                              style: TextStyle(
                                  fontSize: height * 0.018,
                                  fontFamily: 'Roboto'),
                            ),
                            Icon(
                              Icons.check,
                              color: const Color.fromARGB(255, 197, 171, 93),
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
      ),
    );
  }
}
