import 'package:flutter/material.dart';

class GenericIdCard extends StatelessWidget {

  bool? isElectricity;
  bool? isAgua;
  bool? isOnat;
  bool? isEtecsa;
  bool? isCorreo;
  bool? isGas;

  GenericIdCard({super.key, this.isElectricity, this.isAgua, this.isCorreo, this.isEtecsa, this.isGas, this.isOnat});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return GestureDetector(
      child: Padding(
          padding: EdgeInsets.all(width * 0.05),
          child: Card(
            color: Color.fromARGB(255, 188, 190, 216),
            elevation: 10,
            shape: RoundedRectangleBorder(
                // side: const BorderSide(color: Colors.orange),
                borderRadius: BorderRadius.circular(10)),
            child: Container(
              padding: EdgeInsets.all(width * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: CircleAvatar(
                      radius: height*0.04,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/etecsa_logo2.jpg',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nombre de cliente',
                          style: TextStyle(fontSize: width * 0.04)),
                      Text("Id del cliente",
                          style: TextStyle(
                              fontSize: width * 0.04, color: Colors.grey[600])),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.10,
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Image.asset(
                      'assets/images/pagado_darkblue.png',
                      height: height * 0.08,
                      width: height * 0.08,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
