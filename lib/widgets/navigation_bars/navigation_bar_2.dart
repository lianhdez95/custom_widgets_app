import 'package:flutter/material.dart';

class NavigationBar2 extends StatefulWidget {
  const NavigationBar2({super.key});

  @override
  State<NavigationBar2> createState() => _NavigationBar2State();
}

class _NavigationBar2State extends State<NavigationBar2> {
  int _selectedScreenIndex = 0;

  final List<Map<String, dynamic>> _screens = [
    {'screen': const ScreenA(), 'title': 'Screen A Title'},
    {'screen': const ScreenB(), 'title': 'Screen B Title'},
    {'screen': const ScreenC(), 'title': 'Screen C Title'},
    {'screen': const ScreenD(), 'title': 'Screen D Title'},
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedScreenIndex]['title']),
      ),
      body: Column(
        children: [
          BottomNavigationBar(
            currentIndex: _selectedScreenIndex,
            onTap: _selectScreen,
            selectedItemColor: Colors.red,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: 'Screen A'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Screen B'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.cases_outlined), label: 'Screen C'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Screen D'),
            ],
            elevation: 5,
            unselectedItemColor: Colors.black,
            type: BottomNavigationBarType.shifting,
          ),
          Expanded(child: _screens[_selectedScreenIndex]['screen']),
        ],
      ),
    );
  }
}

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Screen A',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}

class ScreenB extends StatelessWidget {
  const ScreenB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Screen B',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}

class ScreenC extends StatelessWidget {
  const ScreenC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Screen C',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}

class ScreenD extends StatelessWidget {
  const ScreenD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Screen D',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
