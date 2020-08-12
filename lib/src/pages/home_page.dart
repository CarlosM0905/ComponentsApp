// Imports
import 'package:flutter/material.dart';
// Pages
import 'package:componentes/src/pages/alert_page.dart';
// Providers
import 'package:componentes/src/providers/menu_provider.dart';
// Utils
import 'package:componentes/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    // menuProvider.loadData().then((options) => {print('Lista $options')});

    return FutureBuilder(
        future: menuProvider.loadData(),
        initialData: [],
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(
            children: _itemsList(snapshot.data, context),
          );
        });
  }

  List<Widget> _itemsList(List<dynamic> data, BuildContext context) {
    final List<Widget> options = [];

    data.forEach((opt) {
      // Se crea el widget
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          // final router = MaterialPageRoute(builder: (context) => AlertPage());
          // Navigator.push(context, router);

          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      // Se agrega el widget y el divider
      options..add(widgetTemp)..add(Divider());
    });

    return options;
  }
}
