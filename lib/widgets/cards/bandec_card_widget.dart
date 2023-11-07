import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BandecCardWidget extends StatefulWidget {
  const BandecCardWidget({super.key});

  @override
  _BandecCardWidgetState createState() => _BandecCardWidgetState();
}

class _BandecCardWidgetState extends State<BandecCardWidget> {
  bool showNumber = false;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        print('He apretado la tarjeta');
      },
      child: Padding(
        padding: EdgeInsets.all(width * 0.05),
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 5,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(width * 0.03),
          ),
          child: ClipRRect(
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 137, 28, 46),
                Color.fromARGB(255, 61, 2, 12)
              ], begin: Alignment(0.2, 0.4))),
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
                              top: width * 0.03,
                              right: width * 0.03,
                              left: width * 0.03),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/images/BANDEC_logo.png',
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
                              color: Colors.white,
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
                  Container(
                    padding: EdgeInsets.only(top: height * 0.01),
                    color: Color.fromARGB(70, 255, 255, 255),
                    child: Padding(
                      padding: EdgeInsets.all(height * 0.005),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: width * 0.12,
                          ),
                          !showNumber
                              ? Text('****  ****  ****  0000',
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
                  ),
                  SizedBox(
                    height: height * 0.017,
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
                            color: Colors.white,
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