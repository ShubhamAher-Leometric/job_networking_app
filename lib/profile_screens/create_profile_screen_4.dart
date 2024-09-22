import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_networking_app/profile_screens/terms_and_conditions.dart';

import '../constants/color_constants.dart';
import '../constants/custom_elevated_button.dart';

class CreateProfileScreen4 extends StatefulWidget {
  const CreateProfileScreen4({super.key});

  @override
  State<CreateProfileScreen4> createState() => _CreateProfileScreen4State();
}

class _CreateProfileScreen4State extends State<CreateProfileScreen4> {
  bool _isChecked = false;
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
                          color: appProgressBarColor,
                        ),
                        height: 10,
                        width: screenWidth/3-25,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: appProgressBarColor,
                        ),
                        height: 10,
                        width: screenWidth/3-25,
                      ),
                      Container(
                        height: 10,
                        decoration: BoxDecoration(
                          color: appProgressBarColor,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(16),bottomRight: Radius.circular(16)),
                        ),
                        width: screenWidth/3-25,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Container(child: Image.asset('assets/icons/green_tick.png',height: 20,width: 20,)),
              ],
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
                  labelText: 'Work Authorization',
                  labelStyle: TextStyle(color: appTextfilledColor),
                  hintText: 'Options for work permits',
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
                  labelText: 'ID Verification',
                  labelStyle: TextStyle(color: appTextfilledColor),
                  hintText: 'ID Verification',
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.030),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Checkbox(
              fillColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected)) {
                  return Color(0xFF000000);
                }
                return Colors.white;
              }),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4), // Optional: customize border radius
                side: BorderSide(
                  color: _isChecked ? Colors.transparent : Colors.black, // Border color for unchecked state
                  width: 2, // Border width
                ),
              ),
              visualDensity: VisualDensity(horizontal: -4, vertical: -4),
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value ?? false;
                });
              },
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print("Terms and Conditions tapped");
                },
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "I agree to the app’s terms, conditions, and privacy policy",
                        style: TextStyle(color: Colors.black),
                      ),
                      // TextSpan(
                      //   text: "Terms and Conditions",
                      //   style: TextStyle(
                      //     color: Colors.blue,
                      //     decoration: TextDecoration.underline,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),],),
            SizedBox(height: screenHeight * 0.030),
            CustomElevatedButton(onPressed: (){
             Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TermsAndConditionsPage(),
                ),
              );
            }, title: 'Create Profile'),
            SizedBox(height: screenHeight * 0.030),
          ],
        ),
      ),
    );
  }
}
