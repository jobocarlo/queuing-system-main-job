import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:queueing_system/screens/index/request.dart';
import 'package:queueing_system/screens/index/edit_profile.dart';

class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  double $ScreenHeight = 10; // Default value
  double $ScreenWidth = 20; // Default value;

  late DateTime _selectedDate = DateTime.now();
  late TimeOfDay _selectedTime = TimeOfDay.now();
  String selectedDateText = 'Select a Date';
  String selectedTimeOption = 'Select a Time';

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        final String month = picked.month.toString();
        final String day = picked.day.toString();
        final String weekDay = _getWeekday(picked);
        final String year = picked.year.toString();
        selectedDateText = '$month/$day ($weekDay) $year';
      });
    }
  }

  String _getWeekday(DateTime date) {
    List<String> days = [
      'Sunday',
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday'
    ];
    return days[date.weekday - 1];
  }

  Future<void> _selectTime(BuildContext context) async {
    final String? selectedOption = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Select Time"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text("8:00 AM - 11:00 AM"),
                onTap: () {
                  Navigator.of(context).pop("8:00 AM - 11:00 AM");
                },
              ),
              ListTile(
                title: Text("1:00 PM - 5:00 PM"),
                onTap: () {
                  Navigator.of(context).pop("1:00 PM - 5:00 PM");
                },
              ),
            ],
          ),
        );
      },
    );

    if (selectedOption != null) {
      setState(() {
        selectedTimeOption = selectedOption;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff013440),
        toolbarHeight: 80,
        leading: Image.asset(
          'IMAGE/linya_logo.png', // Replace with the actual path to your image
          height: $ScreenHeight * 20, // Height at 30% of screen height
          width: $ScreenWidth * 20, // Width at 100% of screen width
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => const EditProfile())),
            icon: const Icon(Icons.account_circle),
          ),
        ],
      ),

      body: Column(
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'APPOINTMENT',
              style: GoogleFonts.russoOne(
                color: const Color(0xff013440),
                fontSize: 40,
              ),
            ),
          ),
          Divider(
            thickness: 4,
            indent: 8,
            endIndent: 8,
            color: const Color(0xFFFBB245),
          ),
          SizedBox(height: 90.0),
          Container(
            width: $ScreenWidth * 18,
            height: $ScreenHeight * 10,
            child: ElevatedButton(
              onPressed: () => _selectDate(context),
              child: Text(
                selectedDateText,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF013440),
                onPrimary: Colors.white,
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Set radius to 10
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: $ScreenWidth * 18,
            height: $ScreenHeight * 10,
            child: ElevatedButton(
              onPressed: () => _selectTime(context),
              child: Text(
                selectedTimeOption,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff013440),
                onPrimary: Colors.white,
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Set radius to 10
                ),
              ),
            ),
          ),
          // Submit button
          SizedBox(height: 20.0),
          Container(
            width: $ScreenWidth * 18,
            height: $ScreenHeight * 10,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Request()),
                );
              },
              child: Text(
                'Submit',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFFFBB245),
                onPrimary: Colors.white,
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Set radius to 10
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Appointment(),
  ));
}
