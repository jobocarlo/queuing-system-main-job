import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:queueing_system/screens/wrapper.dart';

import 'auth.dart';
import 'authenticate.dart';

class GuestAuth extends StatefulWidget {
  const GuestAuth({ Key? key }) : super(key: key);

  @override
  _GuestAuthState createState() => _GuestAuthState();
}

class _GuestAuthState extends State<GuestAuth> {
  var $ScreenHeight,
      $ScreenWidth,
      $Color1_background = const Color(0xff013440),
      $Color2_accent = const Color(0xfffbb245),
      $Color3_text = const Color(0xfff8f8f8),
      $Color4_gray = const Color(0xff9e9e9e),
      $temp_var = 6.0;
      List<String> $items = ['Parents/Guardian','Spouse','Relative'];
      String? $selectedItem = 'Parents/Guardian';
      // String selectedItem = 'Option 1';
      // List<String> items = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  final AuthFirebase _auth = AuthFirebase();
  
  @override
  Widget build(BuildContext context) {
    $ScreenHeight = MediaQuery.of(context).size.height / 100;
    $ScreenWidth = MediaQuery.of(context).size.width / 100;

  return Material(
      child: SafeArea(
        child: Container(
          color: $Color1_background,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: $ScreenWidth * 100,
                height: $ScreenHeight * $temp_var,
              ),
              Image.asset(
                'IMAGE/linya_logo.png', // Replace with the actual path to your image
                height: $ScreenHeight * 27, // Height at 25% of screen height
                width: $ScreenWidth * 100, // Width at 25% of screen height
              ),
              SizedBox(
                height: $ScreenHeight * 0.1,
              ),
              Text(
                'Guest Sign Up',
                style: GoogleFonts.shipporiAntique(
                    textStyle: TextStyle(
                  color: $Color3_text,
                  decoration: TextDecoration.none,
                  fontSize:
                    $ScreenHeight * 3, // Font size at 3% of screen height
                  )
                )
              ),
              Text(
                'Please Enter your details',
                style: GoogleFonts.shipporiAntique(
                    textStyle: TextStyle(
                        color: $Color2_accent,
                        decoration: TextDecoration.none,
                        fontSize: $ScreenHeight * 1.7,
                        fontWeight: FontWeight.w100)),
              ),
              SizedBox(
                height: $ScreenHeight * 2.5, // Spacing at 2.5% of screen height
              ),
              //* START OF TEXTFIELDS
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'First Name',
                    style: GoogleFonts.shipporiAntique(
                        textStyle: TextStyle(
                      color: $Color3_text,
                      decoration: TextDecoration.none,
                      fontSize:
                          $ScreenHeight * 1.8, // Font size at 3% of screen height
                    )),
                  ),
                  SizedBox(
                    height: $ScreenHeight * .5,
                  ),
                  SizedBox(
                    width: $ScreenWidth * 80,
                    height: $ScreenHeight * 4.5,
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular($ScreenHeight * 1.2),
                              borderSide: BorderSide(color: $Color4_gray)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular($ScreenHeight * 1.2),
                              borderSide: const BorderSide(color: Colors.white)
                          ),
                          isDense: true
                      ),
                      style: TextStyle(
                        color: $Color4_gray
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: $ScreenHeight * 2, // Spacing at 2.5% of screen height
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Last Name',
                    style: GoogleFonts.shipporiAntique(
                        textStyle: TextStyle(
                      color: $Color3_text,
                      decoration: TextDecoration.none,
                      fontSize:
                          $ScreenHeight * 1.8, // Font size at 3% of screen height
                    )),
                  ),
                  SizedBox(
                    height: $ScreenHeight * .5,
                  ),
                  SizedBox(
                    width: $ScreenWidth * 80,
                    height: $ScreenHeight * 4.5,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular($ScreenHeight * 1.2),
                              borderSide: BorderSide(color: $Color4_gray)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular($ScreenHeight * 1.2),
                              borderSide: const BorderSide(color: Colors.white)
                          ),
                          isDense: true
                      ),
                      style: TextStyle(
                        color: $Color4_gray
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: $ScreenHeight * 2, // Spacing at 2.5% of screen height
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Phone Number',
                    style: GoogleFonts.shipporiAntique(
                        textStyle: TextStyle(
                      color: $Color3_text,
                      decoration: TextDecoration.none,
                      fontSize:
                          $ScreenHeight * 1.8, // Font size at 3% of screen height
                    )),
                  ),
                  SizedBox(
                    height: $ScreenHeight * .5,
                  ),
                  SizedBox(
                    width: $ScreenWidth * 80,
                    height: $ScreenHeight * 4.5,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular($ScreenHeight * 1.2),
                              borderSide: BorderSide(color: $Color4_gray)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular($ScreenHeight * 1.2),
                              borderSide: const BorderSide(color: Colors.white)
                          ),
                          isDense: true
                      ),
                      style: TextStyle(
                        color: $Color4_gray
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: $ScreenHeight * 2, // Spacing at 2.5% of screen height
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Relationship',
                    style: GoogleFonts.shipporiAntique(
                        textStyle: TextStyle(
                      color: $Color3_text,
                      decoration: TextDecoration.none,
                      fontSize:
                          $ScreenHeight * 1.8, // Font size at 3% of screen height
                    )),
                  ),
                  SizedBox(
                    height: $ScreenHeight * .5,
                  ),
                  SizedBox(
                    width: $ScreenWidth * 80,
                    child: DropdownButtonFormField<String>(
                      dropdownColor: $Color1_background,
                      style: TextStyle(
                        color: $Color3_text
                      ),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular($ScreenHeight * 1.2),
                              borderSide: BorderSide(color: $Color4_gray)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular($ScreenHeight * 1.2),
                              borderSide: const BorderSide(color: Colors.white)
                          ),
                          isDense: true,
                      ),
                      value: $selectedItem,
                      items: $items.map((String item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          $selectedItem = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              
              //* END OF TEXTFIELDS
              SizedBox(
                height: $ScreenHeight * .5,
              ),
            
              
              //* END of Sign In button
              SizedBox(
                height: $ScreenHeight * 2, // Spacing at 2% of screen height
              ),
              //* START of Sign In as Guest
              SizedBox(
                width: $ScreenWidth * 80,
                height: $ScreenHeight * 5.5,
                child: ElevatedButton(
                  onPressed: () async {
                    dynamic result = await _auth.signInGuest();

                    if (result == null){
                      print('error');
                    }
                    else{
                      print('ANON');
                      print(result);
                      // Add the navigation code here
                      // ignore: use_build_context_synchronously
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Wrapper()),
                      );
                    }

                    
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: $Color4_gray,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular($ScreenHeight * 1.2)
                    )
                  ),
                  child: Text(
                    'Sign in as Guest',
                    style: GoogleFonts.shipporiAntique(
                      textStyle: TextStyle(  
                      height: 1.0,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontSize: $ScreenHeight * 1.8,
                      fontWeight: FontWeight.w600)), 
                  )
                ),
              ),
              //* END of Sign In as Guest
              SizedBox(
                height: $ScreenHeight * 1.5, // Spacing at 1.5% of screen height
              ),
              //* START of Signup
              SizedBox(
                width: $ScreenWidth * 80,
                height: $ScreenHeight * 3.5,
                // color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: GoogleFonts.shipporiAntique(
                        textStyle: TextStyle(  
                          height: 1.0,
                          color: $Color3_text,
                          decoration: TextDecoration.none,
                          fontSize: $ScreenHeight * 1.25,
                          fontWeight: FontWeight.w100)),
                    ),
                    TextButton(
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Authenticate())),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero
                      ),
                      child: Text(
                        'Log In',
                        style: GoogleFonts.shipporiAntique(
                          textStyle: TextStyle(  
                            height: 1.0,
                            color: $Color2_accent,
                            decoration: TextDecoration.none,
                            fontSize: $ScreenHeight * 1.25,
                            fontWeight: FontWeight.w100),
                          ),
                      ),
                    ),
                  ],
                )
              ),
              //* END of Signup
              SizedBox(
                width: $ScreenWidth * 100,
                height: $ScreenHeight * $temp_var,
              ),
            ],
          ),
        )
      ),
    );
  }
}
