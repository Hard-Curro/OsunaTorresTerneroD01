import 'package:flutter/material.dart';

class GreenBox extends StatelessWidget {
  const GreenBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70),
        child: Container(
          margin: EdgeInsets.only(top: 30.0),
          width: 5000,
          height: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 160,
                width: 340,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Transform.translate(
                      offset: Offset(
                          0, -10), // Ajusta el valor en Y según tus necesidades
                      child: FlutterLogo(
                        size: 180,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Flutter",
                        style: TextStyle(fontSize: 50),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 510,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Inicio",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      Text("Widgets",
                          style: TextStyle(
                            fontSize: 30,
                          )),
                      Text("About",
                          style: TextStyle(
                            fontSize: 30,
                          )),
                      Transform.translate(
                        offset: Offset(0,
                            -10), // Ajusta el valor en Y según tus necesidades
                        child: Icon(
                          Icons.search,
                          color: const Color.fromARGB(255, 110, 109, 109),
                          size: 50.0,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
