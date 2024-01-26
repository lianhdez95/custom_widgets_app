import 'package:flutter/material.dart';

class IdAguaCard extends StatelessWidget {
  const IdAguaCard({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Card(
          surfaceTintColor: Colors.white,
          color: Colors.white,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(width*0.02),
          ),
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.all(width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/ic_pago_agua.png',
                      height: height * 0.08,
                      width: height * 0.08,
                    ),
                    SizedBox(width: width * 0.05),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width*0.5,
                          child: Text(
                            'Nombre del cliente',
                            style: TextStyle(fontSize: width * 0.05), overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(height: height*0.01,),
                        SizedBox(
                          width: width*0.5,
                          child: Text(
                            'Id del cliente',
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: width * 0.05,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Opacity(
                  opacity: 0.5,
                  child: PopupMenuButton(
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.edit, color: Colors.blue, size: width*0.08),
                            SizedBox(
                              width: width * 0.05,
                            ),
                            Text('Editar', style: TextStyle(fontSize: width*0.05),)
                          ],
                        ),
                        onTap: () {},
                      ),
                      PopupMenuItem(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.delete, color: Colors.blue, size: width*0.08,),
                            SizedBox(
                              width: width * 0.05,
                            ),
                            Text('Eliminar', style: TextStyle(fontSize: width*0.05))
                          ],
                        ),
                        onTap: () {},
                      ),
                     ],
                     icon: Icon(Icons.more_horiz, color: Colors.black, size: width*0.08),
                     iconSize: width*0.08,
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
