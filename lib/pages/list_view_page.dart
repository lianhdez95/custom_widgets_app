import 'package:custom_widgets_app/pages/facturas_list_view_page.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Views'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.clear_all_rounded, color: Colors.red),
            title: const Text('Facturas ListView'),
            trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.red,),
            onTap: () {
              Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FacturasListViewPage()),
          );
            },
          ),
          const Divider()
        ],
      ),
    );
  }
}
