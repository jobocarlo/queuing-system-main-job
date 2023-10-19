import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:queueing_system/screens/index/edit_profile.dart';
import 'package:queueing_system/screens/index/appointment.dart';
import 'package:queueing_system/screens/index/request.dart';

import '../auth/auth.dart';

class ReservationStepper extends StatefulWidget {
  const ReservationStepper({Key? key}) : super(key: key);

  @override
  _ReservationStepperState createState() => _ReservationStepperState();
}

class _ReservationStepperState extends State<ReservationStepper> {
  var $ScreenHeight,
      $ScreenWidth,
      $Color1_background = const Color(0xff013440),
      $Color2_accent = const Color(0xfffbb245),
      $Color3_text = const Color(0xfff8f8f8),
      $Color4_gray = const Color(0xff9e9e9e);

  int _currentStepIndex = 0;

  final AuthFirebase _auth = AuthFirebase();

  List<Step> steps = [
    const Step(
      title: Text(''),
      content: Text(''),
      isActive: true,
    ),
    const Step(
      title: Text(''),
      content: Text('Content for Step 2'),
      isActive: false,
    ),
    const Step(
      title: Text(''),
      content: Text('Content for Step 3'),
      isActive: false,
    ),
  ];

  String getStepText() {
    if (_currentStepIndex == 0) {
      return 'CHOOSE DEPARTMENT';
    } else if (_currentStepIndex == 1) {
      return 'CHOOSE REASONS';
    } else if (_currentStepIndex == 2) {
      return 'CHOOSE OPTION';
    }
    return '';
  }

  Container buildCommonContainer(String text) {
    return Container(
      width: $ScreenWidth * 85,
      height: $ScreenHeight * 13,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xff013440), // Default box color
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.russoOne(
            textStyle: TextStyle(
              fontSize: 18,
              color: Colors.white, // Text color
            ),
          ),
        ),
      ),
    );
  }

  Container buildCommonContainerWithIcon(String text, IconData iconData) {
    return Container(
      width: $ScreenWidth * 92,
      height: $ScreenHeight * 13,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xff013440), // Default box color
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Align the row to the center
          children: [
            Icon(
              iconData,
              color: const Color(0xfffbb245), // Set the icon color to fbb245
            ),
            SizedBox(width: 8), // Adjust the spacing between icon and text
            Text(
              text,
              style: GoogleFonts.russoOne(
                textStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.white, // Text color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildAdditionalBox(double width, double height, String label) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: const Color(0xfffbb245), // Set the color to fbb245
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          label,
          style: GoogleFonts.russoOne(
            textStyle: TextStyle(
              fontSize: 18,
              color: Colors.white, // Text color
            ),
          ),
        ),
      ),
    );
  }

  List<String> reasons = [
    "ENROLLMENT",
    "GRADES",
    "SUBMIT DOCUMENTATION",
    "REQUEST DOCUMENTATION",
    "CONSULTATION",
    "OTHERS",
  ];

  @override
  Widget build(BuildContext context) {

    $ScreenHeight = MediaQuery.of(context).size.height / 100;
    $ScreenWidth = MediaQuery.of(context).size.width / 100;

    int _indent = 8;
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text(''),
          backgroundColor: $Color1_background,
          toolbarHeight: 80,
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const EditProfile())),
              icon: const Icon(Icons.account_circle),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _currentStepIndex = 0;
                });
              },
              icon: Icon(Icons.square),
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: $ScreenHeight * 3,
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (_currentStepIndex > 0) {
                          setState(() {
                            _currentStepIndex--;
                          });
                        }
                      },
                      child: Icon(Icons.arrow_back, color: $Color1_background),
                    ),
                    SizedBox(width: 4),
                    Text(
                      getStepText(),
                      style: GoogleFonts.russoOne(
                        textStyle: TextStyle(
                          color: $Color1_background,
                          decoration: TextDecoration.none,
                          fontSize: $ScreenHeight * 3.2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 4,
                indent: $ScreenWidth * _indent,
                endIndent: $ScreenWidth * _indent,
                color: $Color2_accent,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildNumberedCircle(55, 55, "1", isUniqueDesign: _currentStepIndex == 0),
                  buildNumberedCircle(55, 55, "2", isUniqueDesign: _currentStepIndex == 1),
                  buildNumberedCircle(55, 55, "3", isUniqueDesign: _currentStepIndex == 2),
                ],
              ),

              if (_currentStepIndex == 0)
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentStepIndex = 1;
                        });
                      },
                      child: buildCommonContainerWithIcon(
                        "COMPUTER STUDIES DEPARTMENT",
                        Icons.computer, // Icon for Computer Studies
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentStepIndex = 1;
                        });
                      },
                      child: buildCommonContainerWithIcon(
                        "ENGINEERING DEPARTMENT",
                        Icons.engineering, // Icon for Engineering
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentStepIndex = 1;
                        });
                      },
                      child: buildCommonContainerWithIcon(
                        "ARCHITECTURE DEPARTMENT",
                        Icons.architecture, // Icon for Architecture
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentStepIndex = 1;
                        });
                      },
                      child: buildCommonContainerWithIcon(
                        "ANOTHER DEPARTMENT",
                        Icons.business, // Icon for Another Department
                      ),
                    ),
                  ],
                ),

              if (_currentStepIndex == 1)
                Column(
                  children: List.generate(reasons.length, (index) {
                    String reason = reasons[index];
                    IconData iconData;

                    // Assign icons based on the reason
                    if (reason == "ENROLLMENT") {
                      iconData = Icons.school;
                    } else if (reason == "GRADES") {
                      iconData = Icons.numbers;
                    } else if (reason == "SUBMIT DOCUMENTATION") {
                      iconData = Icons.file_copy;
                    } else if (reason == "REQUEST DOCUMENTATION") {
                      iconData = Icons.request_page;
                    } else if (reason == "CONSULTATION") {
                      iconData = Icons.phone_in_talk;
                    } else if (reason == "OTHERS") {
                      iconData = Icons.devices_other;
                    } else {
                      iconData = Icons.star;
                    }

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentStepIndex = 2;
                        });
                      },
                      child: Container(
                        width: $ScreenWidth * 90,
                        height: $ScreenHeight * 8,
                        margin: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: const Color(0xff013440),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                iconData, // Icon for the reason
                                color: const Color(0xfffbb245), // Set the icon color to fbb245
                              ),
                              SizedBox(width: 8), // Adjust the spacing between icon and text
                              Text(
                                reason,
                                style: GoogleFonts.russoOne(
                                  textStyle: TextStyle(
                                    color: Colors.white, // Set the text color to white
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),

              if (_currentStepIndex == 2)
    Column(
    children: [
    SizedBox(height: 16),
    Container(
    width: $ScreenWidth * 84,
    height: $ScreenHeight * 33,
    margin: EdgeInsets.only(top: 16),
    decoration: BoxDecoration(
    color: Colors.white,
    border: Border.all(
    color: const Color(0xff013440),
    width: 2,
    ),
    borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    SizedBox(height: 16),
    Text(
    "CHOSEN DEPARTMENT",
    style: GoogleFonts.russoOne(
    textStyle: TextStyle(
    fontSize: 24,
    color: const Color(0xff013440),
    ),
    ),
    ),
    SizedBox(height: 16),
    Container(
    width: $ScreenWidth * 75,
    height: $ScreenHeight * 0.5,
    color: const Color(0xff013440),
    ),
    SizedBox(height: 16),
    Container(
    width: $ScreenWidth * 75,
    height: $ScreenHeight * 13,
    decoration: BoxDecoration(
    color: const Color(0xff013440),
    borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
    padding: EdgeInsets.only(left: 16, top: 16),
    child: Text(
    "REASON:",
    style: GoogleFonts.russoOne(
    textStyle: TextStyle(
    color: Colors.white,
    fontSize: 16,
    ),
    ),
    ),
    ),
    ),

    SizedBox(height: 16),
    Container(
    width: $ScreenWidth * 56,
    height: $ScreenHeight * 4,
    decoration: BoxDecoration(
    color: Colors.white,
    border: Border.all(
    color: const Color(0xff013440),
    width: 2,
    ),
    borderRadius: BorderRadius.circular(20),
    ),
    ),
    SizedBox(height: 16),
    Container(
    width: $ScreenWidth * 75,
    height: $ScreenHeight * 0.5,
    color: const Color(0xff013440),
    ),
    ],
    ),
    ),
    SizedBox(height: 16),

    GestureDetector(
    onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Appointment()));
    },
    child: buildAdditionalBox($ScreenWidth * 84, $ScreenHeight * 10, "APPOINTMENT"),
    ),

    SizedBox(height: 16),

    GestureDetector(
    onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Request()));
    },
    child: buildAdditionalBox($ScreenWidth * 84, $ScreenHeight * 10, "TODAY"),
    ),
    ],
    ),
    ],
    ),
    ),
    ),
    );
  }

  Container buildNumberedCircle(double width, double height, String number, {required bool isUniqueDesign}) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isUniqueDesign ? Colors.white : const Color(0xff013440),
        border: Border.all(
          color: isUniqueDesign ? const Color(0xff013440) : Colors.white,
          width: 2,
        ),
      ),
      child: Center(
        child: Text(
          number,
          style: GoogleFonts.russoOne(
            textStyle: TextStyle(
              color: isUniqueDesign ? const Color(0xff013440) : Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}


