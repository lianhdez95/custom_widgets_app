// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DestinatariosBandecCard extends StatelessWidget {
  const DestinatariosBandecCard({super.key});

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
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
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
                  Color.fromARGB(255, 118, 37, 33),
                  Color.fromARGB(255, 218, 31, 43),
                  Color.fromARGB(255, 126, 37, 33)
                ],
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
                                'assets/images/bandec.png',
                                width: width * 0.3,
                                height: height * 0.3,
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
                            onPressed: () {}),
                      )
                    ],
                  ),
                  Container(
                    color: const Color.fromARGB(70, 255, 255, 255),
                    child: Padding(
                      padding: EdgeInsets.all(height * 0.010),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: width * 0.1,
                          ),
                          Text('XXXX  XXXX  XXXX  0000',
                              style: TextStyle(
                                  fontSize: width * 0.06, fontFamily: 'Roboto'))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.017,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05, bottom: height * 0.01),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('LIAN HERNÁNDEZ DELGADO',
                            style: TextStyle(
                                fontSize: height * 0.02, fontFamily: 'Roboto')),
                        Text('CUP', style: TextStyle(
                                fontSize: height * 0.02, fontFamily: 'Roboto'))
                      ],
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
