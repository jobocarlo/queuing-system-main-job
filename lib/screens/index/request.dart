import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:queueing_system/screens/index/HOME2.dart';

class Request extends StatefulWidget {
  const Request({ Key? key }) : super(key: key);

  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<Request> {
  var $ScreenHeight,
      $ScreenWidth,
      $Color1_background = const Color(0xff013440),
      $Color2_accent = const Color(0xfffbb245),
      $Color3_text = const Color(0xfff8f8f8),
      $Color4_gray = const Color(0xff9e9e9e),
      $temp_var = 9.6;


  @override
  Widget build(BuildContext context) {
    $ScreenHeight = MediaQuery.of(context).size.height / 100;
    $ScreenWidth = MediaQuery.of(context).size.width / 100;

    return Material(
      child: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: $ScreenHeight * 60,
                width: $ScreenWidth * 85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: $Color1_background,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Your Request Has Been Sent',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.russoOne(
                        textStyle: TextStyle(
                          color: $Color2_accent,
                          decoration: TextDecoration.none,
                          fontSize: $ScreenHeight * 3,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: $ScreenHeight * 2.5,
                    ),
                    Text(
                      'You will receive a notification shortly',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.russoOne(
                        textStyle: TextStyle(
                          color: $Color2_accent,
                          decoration: TextDecoration.none,
                          fontSize: $ScreenHeight * 3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: $ScreenHeight * 2.5,
              ),
              SizedBox(
                width: $ScreenWidth * 80,
                height: $ScreenHeight * 5.5,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home2()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: $Color2_accent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular($ScreenHeight * 1.2),
                    ),
                  ),
                  child: Text(
                    'Back to homepage',
                    style: GoogleFonts.shipporiAntique(
                      textStyle: TextStyle(
                        color: Colors.black87,
                        decoration: TextDecoration.none,
                        fontSize: $ScreenHeight * 2,
                        fontWeight: FontWeight.w700,
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
