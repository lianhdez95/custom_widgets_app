import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DestinatariosBPACard extends StatelessWidget {
  const DestinatariosBPACard({super.key});

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

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
          color: const Color(0xFF9B9999),
          elevation: 20,
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
                    height: height * 0.22 * 0.25,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 25, 177, 5),
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
                  IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz))
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
                        color: const Color.fromARGB(255, 25, 177, 5),
                        size: height * 0.05,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Text('XXXX  XXX  XXX  2461',
                            style: TextStyle(fontSize: width * 0.06, fontFamily: 'Roboto')),
                    
                  ],
                ),
              ),
              SizedBox(height: height*0.02,),
              Container(
                padding: EdgeInsets.only(left: width*0.05, bottom: height*0.01, right: width*0.05),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('LIAN HERNÁNDEZ',
                        style: TextStyle(fontSize: height * 0.02, fontFamily: 'Roboto')),
                    Text('CUP',
                        style: TextStyle(fontSize: height * 0.02, fontFamily: 'Roboto')),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}