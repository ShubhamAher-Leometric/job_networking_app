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
  String _selectedGender = '';
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
                          color: appPrimaryColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        height: 10,
                        width: screenWidth/3-25,
                      ),
                      Container(
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
                Text('20%')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: screenHeight * 0.12,
                      width: screenWidth * 0.8,
                    ),
                    Positioned(
                      // top: screenHeight * 0.03,
                      left: (screenWidth * 0.8) / 2 - screenHeight * 0.06,
                      child: CircleAvatar(
                        radius: screenHeight * 0.06,
                        backgroundColor: Colors.red,
                        backgroundImage: AssetImage('assets/temp_images/dummy_user.png'),
                      ),
                    ),
                    Positioned(
                      top: screenHeight * 0.08,
                      left: (screenWidth * 0.8) / 2 + screenHeight * 0.03,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: appsecondaryColor,
                          ),
                          child: Icon(
                            Icons.edit,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
                    labelText: 'Full Name',
                    labelStyle: TextStyle(color: appTextfilledColor),
                    hintText: 'Enter your full name',
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
                  labelText: 'Email',
                  labelStyle: TextStyle(color: appTextfilledColor),
                  hintText: 'Enter your email',
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
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(color: appTextfilledColor),
                  hintText: 'Enter your phone number',
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
                  labelText: 'Location',
                  labelStyle: TextStyle(color: appTextfilledColor),
                  hintText: 'Enter your city name/residential area',
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
                              title: Text('Male'),
                              onTap: () {
                                // Handle Male selection
                                setState(() {
                                  _selectedGender = 'Male';
                                });
                                Navigator.pop(context);
                              },
                            ),
                            ListTile(
                              title: Text('Female'),
                              onTap: () {
                                setState(() {
                                  _selectedGender = 'Female';
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
                      labelText: 'Gender',
                      labelStyle: TextStyle(color: appTextfilledColor),
                      hintText: 'Select your gender',
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: appsecondaryColor,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    controller: TextEditingController(text: _selectedGender),
                  ),
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
                      borderSide: BorderSide(color: appTextfilledColor), // Set border color
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: appTextfilledColor), // Set focused border color
                    ),
                    labelText: 'Date of Birth',
                    labelStyle: TextStyle(color: appTextfilledColor),
                    hintText: 'Enter Your Date of Birth',
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.calendar_month_outlined,
                        color: appsecondaryColor,
                      ),
                      onPressed: () {
                        _selectDate(context); // Open the date picker when the icon is pressed
                      },
                    ),
                  ),
                  controller: TextEditingController(text: _selectedDate), // Display the selected date
                ),
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
