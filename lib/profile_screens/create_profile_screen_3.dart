import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_networking_app/profile_screens/create_profile_screen_4.dart';

import '../constants/color_constants.dart';
import '../constants/custom_elevated_button.dart';

class CreateProfileScreen3 extends StatefulWidget {
  const CreateProfileScreen3({super.key});

  @override
  State<CreateProfileScreen3> createState() => _CreateProfileScreen3State();
}

class _CreateProfileScreen3State extends State<CreateProfileScreen3> {
  String _selectedLanguage = '';
  String _profilrVisibility ='';

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;

    return Scaffold(
      backgroundColor: appbackgroundColor,
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
                    Icon(Icons.arrow_back_outlined,size: 24,),
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
                        ),
                        height: 10,
                        width: screenWidth/3-25,
                      ),
                      Container(
                        height: 10,
                        decoration: BoxDecoration(
                          color: appPrimaryColor,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(16),bottomRight: Radius.circular(16)),
                        ),
                        width: screenWidth/3-25,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Text('90%')
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
                  labelText: 'Profile Summary',
                  labelStyle: TextStyle(color: appTextfilledColor),
                  hintText: 'Write a short description',
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
                  labelText: 'Education',
                  labelStyle: TextStyle(color: appTextfilledColor),
                  hintText: 'Highest level of education',
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
                  labelText: 'Certifications',
                  labelStyle: TextStyle(color: appTextfilledColor),
                  hintText: 'Relevant certifications or training',
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
                  labelText: 'Skills',
                  labelStyle: TextStyle(color: appTextfilledColor),
                  hintText: 'e.g., customer service',
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.030),
            SizedBox(
              height: screenHeight * 0.08,
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: Text('English'),
                              onTap: () {
                                // Handle Male selection
                                setState(() {
                                  _selectedLanguage = 'English';
                                });
                                Navigator.pop(context);
                              },
                            ),
                            ListTile(
                              title: Text('French'),
                              onTap: () {
                                setState(() {
                                  _selectedLanguage = 'French';
                                });
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: AbsorbPointer(
                  child: TextField(
                    cursorColor: Colors.transparent,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: appTextfilledColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appTextfilledColor),
                      ),
                      labelText: 'Language',
                      labelStyle: TextStyle(color: appTextfilledColor),
                      hintText: 'Enter Your Language',
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: appsecondaryColor,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    controller: TextEditingController(text: _selectedLanguage),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.030),
            SizedBox(
              height: screenHeight * 0.08,
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: Text('public'),
                              onTap: () {
                                setState(() {
                                  _profilrVisibility = 'public';
                                });
                                Navigator.pop(context);
                              },
                            ),
                            ListTile(
                              title: Text('only employers'),
                              onTap: () {
                                setState(() {
                                  _profilrVisibility = 'only employers';
                                });
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: AbsorbPointer(
                  child: TextField(
                    cursorColor: Colors.transparent,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: appTextfilledColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appTextfilledColor),
                      ),
                      labelText: 'Profile Visibility',
                      labelStyle: TextStyle(color: appTextfilledColor),
                      hintText: 'e.g., public, only employers',
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: appsecondaryColor,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    controller: TextEditingController(text: _profilrVisibility),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.030),
            CustomElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreateProfileScreen4(),
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
