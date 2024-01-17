import 'package:ejemplo1/pages/Inicio/widgets/blueBox.dart';
import 'package:ejemplo1/pages/Inicio/widgets/contador.dart';
import 'package:ejemplo1/widgets/greenBox.dart';
import 'package:ejemplo1/pages/Inicio/widgets/redBox.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              GreenBox(),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 110,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RedBox(),
                    SizedBox(
                      width: 130,
                    ),
                    BlueBox(),
                  ],
                ),
              ),
              Contador(),
            ],
          ),
        ),
      ),
    );
  }
}
