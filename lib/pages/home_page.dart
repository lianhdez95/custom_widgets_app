import 'package:custom_widgets_app/pages/bank_cards_page.dart';
import 'package:custom_widgets_app/pages/buttons_page.dart';
import 'package:custom_widgets_app/pages/cards_page.dart';
import 'package:custom_widgets_app/pages/chat_bubbles_page.dart';
import 'package:custom_widgets_app/pages/inputs_page.dart';
import 'package:custom_widgets_app/pages/list_view_page.dart';
import 'package:custom_widgets_app/pages/my_home_page.dart';
import 'package:custom_widgets_app/pages/navigation_bars_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Widgets App'),
        // actions: [
        //   PopupMenuButton<String>(
        //     onSelected: (String value) {
        //       // Aquí puedes manejar la opción seleccionada
        //       if (value == 'Opción 1') {
        //         // Acción para la opción 1
        //       } else if (value == 'Opción 2') {
        //         // Acción para la opción 2
        //       } else if (value == 'Opción 3') {
        //         // Acción para la opción 3
        //       }
        //     },
        //     itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        //       const PopupMenuItem<String>(
        //         value: 'Opción 1',
        //         child: Text('Opción 1'),
        //       ),
        //       const PopupMenuItem<String>(
        //         value: 'Opción 2',
        //         child: Text('Opción 2'),
        //       ),
        //       const PopupMenuItem<String>(
        //         value: 'Opción 3',
        //         child: Text('Opción 3'),
        //       ),
        //     ],
        //   ),
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            navigationListTile(context, {
              'leading': const Icon(Icons.credit_card),
              'title': 'Cards Page',
              'route': const CardsPage(),
            }),
            const Divider(),
            navigationListTile(context, {
              'leading': const Icon(Icons.calendar_view_day),
              'title': 'Bank Cards Page',
              'route': const BankCardsPage(),
            }),
            const Divider(),
            navigationListTile(context, {
              'leading': const Icon(Icons.list_alt_outlined),
              'title': 'ListView Page',
              'route': const ListViewPage(), // Agrega la ruta deseada aquí
            }),
            const Divider(),
            navigationListTile(context, {
              'leading': const Icon(Icons.chat_bubble),
              'title': 'Chat Bubbles Page',
              'route': const ChatBubblessPage(), // Agrega la ruta deseada aquí
            }),
            const Divider(),
            navigationListTile(context, {
              'leading': const Icon(Icons.smart_button_sharp),
              'title': 'Buttons Page',
              'route': const ButtonsPage(), // Agrega la ruta deseada aquí
            }),
            const Divider(),
            navigationListTile(context, {
              'leading': const Icon(Icons.input),
              'title': 'Text Inputs Page',
              'route': const InputsPage(), // Agrega la ruta deseada aquí
            }),
            const Divider(),
            navigationListTile(context, {
              'leading': const Icon(Icons.navigation_rounded),
              'title': 'Navigation Bars',
              'route': const NavigationBarsPage(), // Agrega la ruta deseada aquí
            }),
            const Divider(),
          ],
        ),
      ),
    );
  }

  ListTile navigationListTile(BuildContext context, Map<String, dynamic> params) {
    return ListTile(
      onTap: () {
        if (params['route'] != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => params['route']),
          );
        } else {
          // Acción personalizada si no hay una ruta definida
        }
      },
      leading: params['leading'],
      title: Text(params['title']),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
    );
  }
}