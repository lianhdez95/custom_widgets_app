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
        print('He apretado la tarjeta');
      },
      child: Padding(
        padding: EdgeInsets.all(width * 0.05),
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: const Color(0xFF9B9999),
          elevation: 5,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(width*0.03),
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
                      color: Color.fromARGB(255, 25, 177, 5),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(width*0.03),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.03),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'assets/images/banmet_logo.svg',
                            width: height * 0.04,
                            height: height * 0.04,
                            fit: BoxFit.cover,
                          ),
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
                      }
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: height * 0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_left,
                      color: Color.fromARGB(255, 25, 177, 5),
                      size: height * 0.05,
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    !showNumber
                        ? Text('****  ****  ****  0000',
                            style: TextStyle(fontSize: width * 0.06, fontFamily: 'Roboto'))
                        : Text('9225  9598  0000  0000',
                            style: TextStyle(fontSize: width * 0.06, fontFamily: 'Roboto')),
                    
                  ],
                ),
              ),
              SizedBox(height: height*0.02,),
              Container(
                padding: EdgeInsets.only(top: height * 0.01, left: width*0.05),
                alignment: Alignment.centerLeft,
                child: Text('LIAN HERNÁNDEZ DELGADO',
                    style: TextStyle(fontSize: height * 0.02, fontFamily: 'Roboto')),
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
                        style: TextStyle(fontSize: height * 0.018, fontFamily: 'Roboto'),
                      ),
                      Text(
                        'VENCE: 00/00',
                        style: TextStyle(fontSize: height * 0.018, fontFamily: 'Roboto'),
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
    );
  }
}