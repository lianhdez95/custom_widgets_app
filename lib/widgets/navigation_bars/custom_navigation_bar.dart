import 'package:flutter/material.dart';

class CustomButtonNavigationBar extends StatelessWidget {
  final int index;

  final ValueChanged<int> onIndexSelected;
  const CustomButtonNavigationBar({
    super.key,
    required this.index,
    required this.onIndexSelected,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
        color: Colors.white,
        padding: const EdgeInsets.all(12.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Color.fromRGBO(31, 148, 212, 1),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  color:
                      index == 0 ? Color.fromRGBO(14, 40, 89, 1) : Colors.white,
                  onPressed: () => onIndexSelected(0),
                  icon: Icon(Icons.store_mall_directory_sharp, size: width*0.1,)),
              IconButton(
                  color:
                      index == 1 ? Color.fromRGBO(14, 40, 89, 1) : Colors.white,
                  onPressed: () => onIndexSelected(1),
                  icon: Icon(Icons.home, size: width*0.1,)),
              // Icon(Icons.home),

              IconButton(
                  color:
                      index == 2 ? Color.fromRGBO(14, 40, 89, 1) : Colors.white,
                  onPressed: () => onIndexSelected(2),
                  icon: Icon(Icons.calculate, size: width*0.1,)
                  // Icon(Icons.notifications)
                  //BellWidget(),
                  ),
              IconButton(
                  color:
                      index == 3 ? Color.fromRGBO(14, 40, 89, 1) : Colors.white,
                  onPressed: () => onIndexSelected(3),
                  icon: Icon(Icons.person, size: width*0.1,)
                  // Icon(Icons.group),
                  ),
            ],
          ),
        ));
  }
}
