import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mbti_suggest/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash_screen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: const DecorationImage(
            image: const AssetImage("assets/images/bg11.png"),
            fit: BoxFit.fill
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Hi! let me introduce',style: GoogleFonts.pattaya(fontSize: 18.0)),
              Text('16 Personalities',style: GoogleFonts.merriweather(fontSize: 20.0)),
              SizedBox(height: 8.0,),
              Text('/ M B T I /',style: GoogleFonts.merriweather(fontSize: 35.0)),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image(
                    image: AssetImage('assets/images/mbti8.png'),
                    width: 330.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  setState(() {
                    Navigator.pushReplacementNamed(
                        context, HomePage.routeName);
                  });
                },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(130.0, 30.0),
                      primary: Colors.green.shade800,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)
                      )
                    ),
                    child: Text('let go!',style: TextStyle(color: Colors.white),)),
              )
            ],
          ),
        ),
      ));
  }
}
