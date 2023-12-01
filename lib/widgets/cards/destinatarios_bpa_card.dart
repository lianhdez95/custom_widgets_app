// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DestinatariosBPACard extends StatelessWidget {
  const DestinatariosBPACard({super.key});

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
        padding: EdgeInsets.only(top: width * 0.05, left: width * 0.05, right: width * 0.05),
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: const Color.fromARGB(255, 219, 235, 228),
          elevation: 5,
          shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(width * 0.03),
          ),
          child: ClipRRect(
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 207, 227, 232),    
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
                        height: height * 0.22 * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(width * 0.03),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: width * 0.03,
                              left: width * 0.03,
                              top: width * 0.03),
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
                            onPressed: () {}),
                      )
                    ],
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
                      height: height * 0.005,
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
                        Text('XXXX  XXXX  XXXX  0000',
                            style: TextStyle(
                                fontSize: width * 0.06, fontFamily: 'Roboto'))
                      ],
                    ),
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
                      height: height * 0.005,
                      width: width * 0.6,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05, vertical: height * 0.01),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('LIAN HERNÁNDEZ DELGADO',
                            style: TextStyle(
                                fontSize: height * 0.02, fontFamily: 'Roboto')),
                        Text('CUP',
                            style: TextStyle(
                                fontSize: height * 0.02, fontFamily: 'Roboto', fontWeight: FontWeight.w900))
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
