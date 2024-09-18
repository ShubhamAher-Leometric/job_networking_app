import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_networking_app/profile_screens/create_profile_screen_3.dart';

import '../constants/color_constants.dart';
import '../constants/custom_elevated_button.dart';

class CreateProfileScreen2 extends StatefulWidget {
  const CreateProfileScreen2({super.key});

  @override
  State<CreateProfileScreen2> createState() => _CreateProfileScreen2State();
}

class _CreateProfileScreen2State extends State<CreateProfileScreen2> {
  String _selectedDate = '';

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      setState(() {
        _selectedDate = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height:screenHeight * 0.10,
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios_new_rounded,size: 24,),
                    Text(
                        'Back',
                        style: const TextStyle(fontWeight: FontWeight.bold)
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Create Profile',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: appTextColor,
              ),
            ),
            const Text(
              'Enter your Skills and Preferences',
              style: TextStyle(fontSize: 12, color: appTextColor2,fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: screenHeight * 0.022),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: appTextColor2,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(16),bottomLeft: Radius.circular(16)),
                          color: appPrimaryColor,
                        ),
                        height: 10,
                        width: screenWidth/3-25,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: appPrimaryColor,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(16),bottomRight: Radius.circular(16)),
                        ),
                        height: 10,
                        width: screenWidth/3-25,
                      ),
                      Container(
                        height: 10,
                        width: screenWidth/3-25,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Text('50%')
              ],
            ),
            SizedBox(height: screenHeight * 0.030),
            SizedBox(
              height: screenHeight * 0.08,
              child: TextField(
                cursorColor: appPrimaryColor,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: appTextfilledColor), // Set border color
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appTextfilledColor), // Set focused border color
                  ),
                  labelText: 'Job Type',
                  labelStyle: TextStyle(color: appTextfilledColor),
                  hintText: 'e.g., Part-time, Daily wages, Hourly',
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.030),
            SizedBox(
              height: screenHeight * 0.08,
              child: TextField(
                cursorColor: appPrimaryColor,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: appTextfilledColor), // Set border color
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appTextfilledColor), // Set focused border color
                  ),
                  labelText: 'Job Preferences',
                  labelStyle: TextStyle(color: appTextfilledColor),
                  hintText: 'e.g., Retail, Hospitality, Logistics',
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.030),
            SizedBox(
              height: screenHeight * 0.08,
              child: TextField(
                cursorColor: appPrimaryColor,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: appTextfilledColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appTextfilledColor),
                  ),
                  labelText: 'Salary Expetations',
                  labelStyle: TextStyle(color: appTextfilledColor),
                  hintText: 'Enter your salary expetations',
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.030),
            SizedBox(
              height: screenHeight * 0.08,
              child: GestureDetector(
                onTap: () {
                  _selectDate(context); // Open the date picker when tapped
                },
                child: AbsorbPointer( // Prevents the default focus behavior of TextField
                  child: TextField(
                    cursorColor: Colors.transparent,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: appTextfilledColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appTextfilledColor),
                      ),
                      labelText: 'Availability',
                      labelStyle: TextStyle(color: appTextfilledColor),
                      hintText: 'Set available days and times',
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.calendar_month_outlined,
                          color: appsecondaryColor,
                        ),
                        onPressed: () {
                          _selectDate(context);
                        },
                      ),
                    ),
                    controller: TextEditingController(text: _selectedDate),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.030),
            SizedBox(
              height: screenHeight * 0.08,
              child: TextField(
                cursorColor: appPrimaryColor,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: appTextfilledColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appTextfilledColor),
                  ),
                  labelText: 'Preferred Work Hours',
                  labelStyle: TextStyle(color: appTextfilledColor),
                  hintText: 'Morning, afternoon, evening, or night shifts',
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.030),
            CustomElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreateProfileScreen3(),
                ),
              );
            }, title: 'Continue'),
            SizedBox(height: screenHeight * 0.030),
          ],
        ),
      ),
    );
  }
}
