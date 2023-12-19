import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class contador extends StatelessWidget {
  const contador({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromRGBO(104, 183, 247, 1)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 800,
            height: 450,
            child: Center(
              child: Transform.translate(
                offset: Offset(
                    0, -30), // Ajusta el valor en Y según tus necesidades
                child: Text(
                  "13",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 330,
                        fontWeight: FontWeight.w100,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromARGB(57, 255, 255, 255),
                    border: Border.all(
                      color: Colors.white, // Color del borde blanco
                      width: 3.0, // Ancho del borde
                    )),
                child: Center(
                    child: Text(
                  "+1",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 70.0, // Tamaño del texto
                    color: Colors.white, // Color del texto
                  ),
                )),
              ),
              SizedBox(
                width: 130,
              ),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromARGB(57, 255, 255, 255),
                    border: Border.all(
                      color: Colors.white, // Color del borde blanco
                      width: 3.0, // Ancho del borde
                    )),
                child: Center(
                    child: Icon(
                  Icons.refresh,
                  color: Colors.white,
                  size: 60,
                )),
              ),
              SizedBox(
                width: 130,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromARGB(57, 255, 255, 255),
                    border: Border.all(
                      color: Colors.white, // Color del borde blanco
                      width: 3.0, // Ancho del borde
                    )),
                child: Center(
                    child: Text(
                  "-1",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 70.0, // Tamaño del texto
                    color: Colors.white, // Color del texto
                  ),
                )),
              )
            ],
          )
        ],
      ),
    );
  }
}
