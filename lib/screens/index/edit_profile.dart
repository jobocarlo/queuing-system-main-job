import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        backgroundColor: $Color1_background,
        toolbarHeight: 80,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Container(
          width: $ScreenWidth * 100,
          height: $ScreenHeight * 100,
          color: $Color3_text,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: $ScreenHeight * 1,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle, // Make it a circle
                      color: Colors.grey,
                    ),
                    height:
                        $ScreenHeight * 22, // Height at 25% of screen height
                    width: $ScreenHeight * 22, // Width at 25% of screen height
                  ),
                ),

                SizedBox(
                  height: $ScreenHeight * 1.5,
                ),
                SizedBox(
                  width: $ScreenWidth * 40,
                  height: $ScreenHeight * 5,
                  child: ElevatedButton(
                      onPressed: () => $temp_var,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: $Color2_accent,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular($ScreenHeight * 1.2))),
                      child: Text(
                        'Edit Picture',
                        style: GoogleFonts.shipporiAntique(
                            textStyle: TextStyle(
                                height: 1.0,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                                fontSize: $ScreenHeight * 1.8,
                                fontWeight: FontWeight.w600)),
                      )),
                ), // Add your other content here
                SizedBox(
                  height: $ScreenHeight * 2,
                ),
                Container(
                  padding: EdgeInsets.all($ScreenHeight * 1.5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: $Color4_gray
                    ),
                    borderRadius: BorderRadius.circular($ScreenHeight * 1.3)
                  ),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'First Name',
                            style: GoogleFonts.shipporiAntique(
                                textStyle: TextStyle(
                              color: $Color1_background,
                              decoration: TextDecoration.none,
                              fontSize: $ScreenHeight *
                                  1.8, // Font size at 3% of screen height
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
                                      borderRadius: BorderRadius.circular(
                                          $ScreenHeight * 1.2),
                                      borderSide:
                                          BorderSide(color: $Color1_background)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          $ScreenHeight * 1.2),
                                      borderSide: const BorderSide(
                                          color: Colors.black87)),
                                  isDense: true),
                              style: TextStyle(color: $Color1_background),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: $ScreenHeight * 1,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Last Name',
                            style: GoogleFonts.shipporiAntique(
                                textStyle: TextStyle(
                              color: $Color1_background,
                              decoration: TextDecoration.none,
                              fontSize: $ScreenHeight *
                                  1.8, // Font size at 3% of screen height
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
                                      borderRadius: BorderRadius.circular(
                                          $ScreenHeight * 1.2),
                                      borderSide:
                                          BorderSide(color: $Color1_background)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          $ScreenHeight * 1.2),
                                      borderSide: const BorderSide(
                                          color: Colors.black87)),
                                  isDense: true),
                              style: TextStyle(color: $Color1_background),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: $ScreenHeight * 1,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: GoogleFonts.shipporiAntique(
                                textStyle: TextStyle(
                              color: $Color1_background,
                              decoration: TextDecoration.none,
                              fontSize: $ScreenHeight *
                                  1.8, // Font size at 3% of screen height
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
                                      borderRadius: BorderRadius.circular(
                                          $ScreenHeight * 1.2),
                                      borderSide:
                                          BorderSide(color: $Color1_background)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          $ScreenHeight * 1.2),
                                      borderSide: const BorderSide(
                                          color: Colors.black87)),
                                  isDense: true),
                              style: TextStyle(color: $Color1_background),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: $ScreenHeight * 1,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Course',
                            style: GoogleFonts.shipporiAntique(
                                textStyle: TextStyle(
                              color: $Color1_background,
                              decoration: TextDecoration.none,
                              fontSize: $ScreenHeight *
                                  1.8, // Font size at 3% of screen height
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
                                      borderRadius: BorderRadius.circular(
                                          $ScreenHeight * 1.2),
                                      borderSide:
                                          BorderSide(color: $Color1_background)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          $ScreenHeight * 1.2),
                                      borderSide: const BorderSide(
                                          color: Colors.black87)),
                                  isDense: true),
                              style: TextStyle(color: $Color1_background),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: $ScreenHeight * 1,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Phone Number',
                            style: GoogleFonts.shipporiAntique(
                                textStyle: TextStyle(
                              color: $Color1_background,
                              decoration: TextDecoration.none,
                              fontSize: $ScreenHeight *
                                  1.8, // Font size at 3% of screen height
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
                                      borderRadius: BorderRadius.circular(
                                          $ScreenHeight * 1.2),
                                      borderSide:
                                          BorderSide(color: $Color1_background)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          $ScreenHeight * 1.2),
                                      borderSide: const BorderSide(
                                          color: Colors.black87)),
                                  isDense: true),
                              style: TextStyle(color: $Color1_background),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: $ScreenHeight * 1,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'New Password',
                            style: GoogleFonts.shipporiAntique(
                                textStyle: TextStyle(
                              color: $Color1_background,
                              decoration: TextDecoration.none,
                              fontSize: $ScreenHeight *
                                  1.8, // Font size at 3% of screen height
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
                                      borderRadius: BorderRadius.circular(
                                          $ScreenHeight * 1.2),
                                      borderSide:
                                          BorderSide(color: $Color1_background)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          $ScreenHeight * 1.2),
                                      borderSide: const BorderSide(
                                          color: Colors.black87)),
                                  isDense: true),
                              style: TextStyle(color: $Color1_background),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: $ScreenHeight * 1,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Confirm Password',
                            style: GoogleFonts.shipporiAntique(
                                textStyle: TextStyle(
                              color: $Color1_background,
                              decoration: TextDecoration.none,
                              fontSize: $ScreenHeight *
                                  1.8, // Font size at 3% of screen height
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
                                      borderRadius: BorderRadius.circular(
                                          $ScreenHeight * 1.2),
                                      borderSide:
                                          BorderSide(color: $Color1_background)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          $ScreenHeight * 1.2),
                                      borderSide: const BorderSide(
                                          color: Colors.black87)),
                                  isDense: true),
                              style: TextStyle(color: $Color1_background),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: $ScreenHeight * 2,
                      ),
                      SizedBox(
                        width: $ScreenWidth * 80,
                        height: $ScreenHeight * 5,
                        child: ElevatedButton(
                            onPressed: () => $temp_var,
                            style: ElevatedButton.styleFrom(
                                backgroundColor: $Color2_accent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        $ScreenHeight * 1.2))),
                            child: Text(
                              'Save',
                              style: GoogleFonts.shipporiAntique(
                                  textStyle: TextStyle(
                                      height: 1.0,
                                      color: Colors.black,
                                      decoration: TextDecoration.none,
                                      fontSize: $ScreenHeight * 1.8,
                                      fontWeight: FontWeight.w600)),
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: $ScreenHeight * 2,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
