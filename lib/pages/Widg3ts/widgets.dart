import 'package:ejemplo1/widgets/greenBox.dart';
import 'package:flutter/material.dart';
import 'dart:convert'; // Necesario para usar jsonDecode
import 'package:flutter/services.dart'; // Necesario para cargar archivos desde assets

class Widg3ts extends StatefulWidget {
  @override
  _WidgetsPageState createState() => _WidgetsPageState();
}

class _WidgetsPageState extends State<Widg3ts> {
  List<dynamic> widgets = [];

  // Función para cargar y decodificar el JSON desde assets
  Future<void> loadJsonData() async {
    // Lee el contenido del archivo JSON
    String data = await rootBundle.loadString('assets/components.json');
    // Decodifica el JSON y actualiza el estado del widget
    setState(() {
      widgets = jsonDecode(data)['widgets'];
    });
  }

  @override
  void initState() {
    super.initState();
    // Llama a la función para cargar el JSON cuando el widget se inicia
    loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Puedes personalizar según tus necesidades
          GreenBox(),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: widgets.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlutterLogo(size: 50),
                      SizedBox(height: 10),
                      Text(widgets[index]['nombre']),
                      SizedBox(height: 5),
                      Text(widgets[index]['descripcion']),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
