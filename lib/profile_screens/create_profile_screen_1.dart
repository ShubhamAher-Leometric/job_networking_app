import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import '../constants/custom_elevated_button.dart';

class CreateProfileScreen_1 extends StatefulWidget {
  const CreateProfileScreen_1({super.key});

  @override
  State<CreateProfileScreen_1> createState() => _CreateProfileScreen_1State();
}

class _CreateProfileScreen_1State extends State<CreateProfileScreen_1> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    double titleFontSize = screenWidth * 0.08;

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
              'Enter your Personal Information',
              style: TextStyle(fontSize: 12, color: appTextColor2,fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: screenHeight * 0.011),
            SizedBox(height: screenHeight * 0.022),
            SizedBox(
              height: screenHeight * 0.08,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: appsecondaryColor), // Set border color
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: appsecondaryColor), // Set focused border color
                    ),
                    labelText: 'Full Name',
                    labelStyle: TextStyle(color: appsecondaryColor)
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.030),
            SizedBox(
              height: screenHeight * 0.08,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: appsecondaryColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: appsecondaryColor),
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: appsecondaryColor)
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.030),
            CustomElevatedButton(onPressed: (){
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => SucessScreen(),
              //   ),
              // );
            }, title: 'Continue'),
            SizedBox(height: screenHeight * 0.030),
          ],
        ),
      ),
    );
  }
}
