import 'package:ejemplo1/widgets/blueBox.dart';
import 'package:ejemplo1/widgets/contador.dart';
import 'package:ejemplo1/widgets/greenBox.dart';
import 'package:ejemplo1/widgets/redBox.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          contador(),
        ],
      ),
    );
  }
}
