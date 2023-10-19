import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:queueing_system/screens/index/reservation_stepper.dart';
import '../auth/auth.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home2> {
  var $ScreenHeight,
      $ScreenWidth,
      $Color1_background = const Color(0xff013440),
      $Color2_accent = const Color(0xfffbb245),
      $Color3_text = const Color(0xfff8f8f8),
      $Color4_gray = const Color(0xff9e9e9e),
      $temp_var = 9.6;

  final AuthFirebase _auth = AuthFirebase();

  @override
  Widget build(BuildContext context) {
    $ScreenHeight = MediaQuery.of(context).size.height / 100;
    $ScreenWidth = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'IMAGE/linya_logo.png', // Replace with the actual path to your image
          height: $ScreenHeight * 20, // Height at 30% of screen height
          width: $ScreenWidth * 20, // Width at 100% of screen width
        ),
          backgroundColor: $Color1_background,
          toolbarHeight: 80,
          elevation: 0.0,
          actions: <Widget>[
      PopupMenuButton(
      itemBuilder: (context) => [
      PopupMenuItem(
      height: $ScreenHeight * 4,
      padding: const EdgeInsets.all(0),
      child: Container(
        height: $ScreenHeight * 4,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.amber,
          ),
        ),
        child: const Text("abcde"),
      ),
    ),
    PopupMenuItem(
    height: $ScreenHeight * 4,
    padding: const EdgeInsets.all(0),
    child: Container(
    height: $ScreenHeight * 4,
    decoration: BoxDecoration(
    border: Border.all(
    color: Colors.amber,
    ),
    ),
    child: const Text("abcde"),
    ),
    ),
    PopupMenuItem(
    height: $ScreenHeight * 4,
    padding: const EdgeInsets.all(0),
    child: Container(
    height: $ScreenHeight * 4,
    decoration: BoxDecoration(
    border: Border.all(
    color: Colors.amber,
    ),
    ),
    child: const Text("abcde"),
    ),
    ),
    PopupMenuItem(
    height: $ScreenHeight * 4,
    padding: const EdgeInsets.all(0),
    child: Container(
    height: $ScreenHeight * 4,
    decoration: BoxDecoration(
    border: Border.all(
    color: Colors.amber,
    ),
    ),
    child: const Text("abcde"),
    ),
    ),
    ],
    ),
    ],
    automaticallyImplyLeading: false,
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
    height: $ScreenHeight * 3, // Spacing at 2.5% of screen height
    ),
    Container(
    height: $ScreenHeight * 30, // Height at 25% of screen height
    width: $ScreenWidth * 90,
    decoration: BoxDecoration(
    border: Border.all(
    width: 3,
    style: BorderStyle.solid,
    color: $Color1_background,
    ),
    borderRadius: BorderRadius.circular(40),
    color: $Color3_text,
    ),
    child: Column(
    children: [
    SizedBox(
    height: $ScreenHeight * 11, // Spacing at 2.5% of screen height
    ),
    Text(
    '[No data available]',
    textAlign: TextAlign.center,
    style: GoogleFonts.russoOne(
    textStyle: TextStyle(
    color: $Color1_background,
    decoration: TextDecoration.none,
    fontSize: $ScreenHeight * 4,
    ),
    ),
    ),
    SizedBox(
    height: $ScreenHeight * 3, // Spacing at 2.5% of screen height
    ),
    ],
    ),
    ),
    SizedBox(
    height: $ScreenHeight * 3,
    ),
    const Divider(
    height: 20,
    thickness: 5,
    indent: 20,
    endIndent: 20,
    color: Colors.amber,
    ),

    //! TOKEN GENERATION
    AnnouncementList(),
    ],
    ),
    ),
    ),
    ),
    );
  }
}

class AnnouncementList extends StatelessWidget {
  final List<String> usernames = [
    "Arianne Cari-an",
    "Syverth Barquilla",
    "Justin Denver",
    "Jobo Catubig",
    "John Real Lacaba",
  ];

  final List<String> announcementTexts = [
    "Queue will resume tomorrow",
    "All transactions will be on hold tomorrow",
    "All appointments need to be settled today",
    "Cancellation of token will hinder queue",
    "Inquire to your department head about grades",
  ];

  AnnouncementList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: usernames.length,
      itemBuilder: (BuildContext context, int index) {
        return AnnouncementBlock(
          username: usernames[index],
          announcementText: announcementTexts[index],
        );
      },
    );
  }
}

class AnnouncementBlock extends StatelessWidget {
  final String username;
  final String announcementText;

  const AnnouncementBlock({
    super.key,
    required this.username,
    required this.announcementText,
  });

  @override
  Widget build(BuildContext context) {
    Color customBlueColor = const Color(0xFF013440);

    return Container(
      width: 300,
      height: 300,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: customBlueColor,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 3),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      "User",
                      style: GoogleFonts.russoOne(
                        color: customBlueColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  username,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'RussoOne',
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              width: 700,
              height: 150,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                announcementText,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
