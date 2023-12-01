import 'package:custom_widgets_app/pages/facturas_list_view_page.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListViewPage'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.clear_all_rounded, color: Colors.blue),
            title: Text('Facturas ListView'),
            trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.blue,),
            onTap: () {
              Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FacturasListViewPage()),
          );
            },
          ),
          Divider()
        ],
      ),
    );
  }
}
