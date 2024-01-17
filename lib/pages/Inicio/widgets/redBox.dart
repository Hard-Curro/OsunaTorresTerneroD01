import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RedBox extends StatelessWidget {
  const RedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 673,
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "APRENDE A CREAR WEBS CON FLUTTER",
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 64,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore er dolore madna aliqua.",
              style: TextStyle(
                fontSize: 32,
              ),
            )
          ],
        ),
      ),
    );
  }
}
