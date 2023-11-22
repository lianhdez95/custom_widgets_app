import 'package:flutter/material.dart';

class IdElectricidadCard extends StatelessWidget {
  const IdElectricidadCard({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return GestureDetector(
      child: Padding(
          padding: EdgeInsets.all(width * 0.05),
          child: Card(
            color: Colors.orange[50],
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
                    child: Image.asset(
                      'assets/images/ic_pago_electricidad.png',
                      height: height * 0.08,
                      width: height * 0.08,
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
                    width: width * 0.15,
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: IconButton(
                      onPressed: () {},
                      splashRadius: height * 0.03,
                      splashColor: Colors.orange[200],
                      icon: Icon(Icons.delete, size: height * 0.04),
                      color: Colors.orange[600],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
