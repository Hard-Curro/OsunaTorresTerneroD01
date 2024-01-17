import 'package:ejemplo1/widgets/greenBox.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              GreenBox(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Container(
                    width: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Bienbenido a mi pagina!',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Gracias por visitar mi pagina, mi nombre es Curro Osuna Torres-ternero y tengo 22 años. Estoy estudiando el ciclo superios de Desarrollador de Aplicaciones Webs en el centro Sanra Juaquina de Vedruna en Sevilla',
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            // Agrega la lógica para el botón si es necesario
                          },
                          child: Text('Learn More'),
                        ),
                      ],
                    ),
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
