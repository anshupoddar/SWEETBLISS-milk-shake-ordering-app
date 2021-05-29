import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Confirm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('.')),
      backgroundColor: Colors.blueGrey,
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.shopify.com/s/files/1/2126/1621/articles/pink-pina-colada-mocktail-677537.jpg?v=1607474297'),
                    fit: BoxFit.cover),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 415,
                  color: Colors.transparent,
                  child: Text(
                    'Sweet Bliss',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.rye(
                      textStyle: TextStyle(
                        fontSize: 60.0,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 3.0,
                  width: 270,
                  color: Colors.white,
                ),
                Container(
                  height: 70,
                  width: 415,
                  color: Colors.transparent,
                ),
              ],
            ),
            Stack(
              children: [
                Center(
                  child: Container(
                    color: Colors.transparent,
                    height: 220,
                    width: 400,
                    child: Text(
                      ' Thank You !!!  Your order is Confirmed ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.berkshireSwash(
                        textStyle: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/First');
        },
        child: Icon(Icons.favorite),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
