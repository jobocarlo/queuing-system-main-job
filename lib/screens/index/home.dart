import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:queueing_system/screens/index/reservation_stepper.dart';
import '../auth/auth.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var $ScreenHeight, $ScreenWidth;
  Color $Color1_background = const Color(0xff013440);
  Color $Color2_accent = const Color(0xfffbb245);
  Color $Color3_text = const Color(0xfff8f8f8);
  Color $Color4_gray = const Color(0xff9e9e9e);
  double $temp_var = 9.6;

  final AuthFirebase _auth = AuthFirebase();

  Future<void> _signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      print("Error during sign out: $e");
    }
  }

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
                padding: const EdgeInsets.all(0),
                height: $ScreenHeight * 4,
                child: Container(
                  height: $ScreenHeight * 4,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.amber,
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      _signOut(); // Call the sign-out method
                    },
                    child: const Text("Log out"),
                  ),
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
    )
    ],
       automaticallyImplyLeading: false,
     ),
     body: SafeArea(
       child: SingleChildScrollView( // Wrap the content with SingleChildScrollView
         child: Container(
           width: $ScreenWidth * 100,
           height: $ScreenHeight * 100,
           color: $Color3_text,
           child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
               SizedBox(height: $ScreenHeight * 3),
    Container(
    width: $ScreenWidth * 90, // Updated width
    height: $ScreenHeight * 33, // Updated height
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
    height: $ScreenHeight * 3,
    ),
    Text(
    'WELCOME!',
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
    height: $ScreenHeight * 3,
    ),
    Text(
    'Click Here to get started!',
    textAlign: TextAlign.center,
    style: GoogleFonts.russoOne(
    textStyle: TextStyle(
    color: $Color1_background,
    decoration: TextDecoration.none,
    fontSize: $ScreenHeight * 3,
    ),
    ),
    ),
    SizedBox(
    height: $ScreenHeight * 7,
    ),
    SizedBox(
    width: $ScreenWidth * 45,
    height: $ScreenHeight * 5,
    child: ElevatedButton(
    onPressed: () => Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ReservationStepper()),
    ),
    style: ElevatedButton.styleFrom(
    backgroundColor: $Color2_accent,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular($ScreenHeight * 1.2),
    ),
    ),
    child: Text(
    'NEW TOKEN',
    style: GoogleFonts.shipporiAntique(
    textStyle: TextStyle(
    height: 1.0,
    color: Colors.black,
    decoration: TextDecoration.none,
    fontSize: $ScreenHeight * 2,
    fontWeight: FontWeight.bold,
    ),
    ),
    ),
    ),
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
                 AnnouncementList(screenWidth: $ScreenWidth, screenHeight: $ScreenHeight),
               ],
           ),
         ),
       ),
     ),
   );
 }
}

class AnnouncementList extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  AnnouncementList({required this.screenWidth, required this.screenHeight});

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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: usernames.length,
      itemBuilder: (BuildContext context, int index) {
        return AnnouncementBlock(
          username: usernames[index],
          announcementText: announcementTexts[index],
          screenWidth: screenWidth, // Pass the screenWidth
          screenHeight: screenHeight, // Pass the screenHeight
        );
      },
    );
  }
}

class AnnouncementBlock extends StatelessWidget {
  final String username;
  final String announcementText;
  final double screenWidth;
  final double screenHeight;

  AnnouncementBlock({
    Key? key,
    required this.username,
    required this.announcementText,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    Color customBlueColor = const Color(0xFF013440);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10), // Add left and right margin
      child: Container(
        width: screenWidth * 20,
        height: screenHeight * 30,
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
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: screenWidth * 12,
                    height: screenHeight * 12,
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
                      fontSize: 25,
                      fontFamily: 'RussoOne',
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Container(
                width: screenWidth * 85,
                height: screenHeight * 15,
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
      ),
    );
  }
}

