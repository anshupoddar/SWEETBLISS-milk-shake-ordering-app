import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen0 extends StatefulWidget {
  @override
  _Screen0State createState() => _Screen0State();
}

class _Screen0State extends State<Screen0> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 15),
      vsync: this,
    );
    animation = ColorTween(begin: Color(0xFFDC939D), end: Color(0xFFEABAAF))
        .animate(controller);
    controller.forward();

    controller.addListener(() {
      setState(() {});
      print(animation.value);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: animation.value,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/hand.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Hero(
                    tag: 'logo',
                    child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/log.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        width: 100.0,
                        height: 150.0),
                  ),
                  Text(
                    'Sweet Bliss',
                    style: GoogleFonts.rye(
                      textStyle: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                        color: Color(0xFFCE0C6C),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  child: Text(
                    'Blended with Love & Care',
                    style: GoogleFonts.pacifico(
                      textStyle: TextStyle(
                        fontSize: 27.0,
                        fontStyle: FontStyle.italic,
                        color: Color(0xFF920E4F),
                      ),
                    ),
                  ),
                  width: 320.0,
                  height: 160.0,
                ),
              ),
              SizedBox(
                height: 80.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 35.0),
                child: Material(
                  color: Color(0xFF9F5675),
                  borderRadius: BorderRadius.circular(50.0),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, '/Second'); //Go to registration screen.
                    },
                    minWidth: 15,
                    height: 12.0,
                    child: Text(
                      'Grab Now',
                      style: GoogleFonts.shortStack(
                        textStyle: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                        ),
                      ),
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
