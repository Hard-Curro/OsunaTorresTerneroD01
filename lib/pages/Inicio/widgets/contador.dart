import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);

  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int numero = 0;

  void incrementar() {
    setState(() {
      numero += 1;
    });
  }

  void decrementar() {
    if (numero > 0) {
      setState(() {
        numero -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromRGBO(104, 183, 247, 1),
      ),
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
                  0,
                  -30,
                ),
                child: Text(
                  "$numero",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 330,
                      fontWeight: FontWeight.w100,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: incrementar,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromARGB(57, 255, 255, 255),
                    border: Border.all(
                      color: Colors.white,
                      width: 3.0,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "+1",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 70.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 130,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    numero = 0;
                  });
                },
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromARGB(57, 255, 255, 255),
                    border: Border.all(
                      color: Colors.white,
                      width: 3.0,
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.refresh,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 130,
              ),
              GestureDetector(
                onTap: decrementar,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromARGB(57, 255, 255, 255),
                    border: Border.all(
                      color: Colors.white,
                      width: 3.0,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "-1",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 70.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
