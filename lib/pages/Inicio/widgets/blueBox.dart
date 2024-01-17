import 'package:flutter/material.dart';

class BlueBox extends StatelessWidget {
  const BlueBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 500,
        height: 500,
        child: Center(
          child: Container(
            width: 250,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFF68B7F7),
            ),
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Contador",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
        ));
  }
}
