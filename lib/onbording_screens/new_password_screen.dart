import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_networking_app/sucess_screens/password_sucess_screen.dart';
import 'package:job_networking_app/sucess_screens/sucess_screen.dart';

import '../constants/color_constants.dart';
import '../constants/custom_elevated_button.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  bool _isPasswordHidden = true;
  bool _isConfirmPasswordHidden = true;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    double titleFontSize = screenWidth * 0.08;

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
              'New Password',
              style: TextStyle(
                fontSize: titleFontSize,
                fontWeight: FontWeight.bold,
                color: appTextColor,
              ),
            ),
            const Text(
              'Please enter your new password which should different from your previous password',
              style: TextStyle(fontSize: 12, color: appTextColor2,fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: screenHeight * 0.011),
            SizedBox(height: screenHeight * 0.022),
            SizedBox(height: screenHeight * 0.030),
            SizedBox(
              height: screenHeight * 0.08,
              child: TextField(
                obscureText: _isPasswordHidden,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: appsecondaryColor), // Set border color
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appsecondaryColor), // Set focused border color
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: appsecondaryColor),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordHidden ? Icons.visibility_off : Icons.visibility,
                      color: appsecondaryColor,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordHidden = !_isPasswordHidden;
                      });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.030),
            SizedBox(
              height: screenHeight * 0.08,
              child: TextField(
                obscureText: _isConfirmPasswordHidden,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: appsecondaryColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appsecondaryColor),
                  ),
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(color: appsecondaryColor),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isConfirmPasswordHidden ? Icons.visibility_off : Icons.visibility,
                      color: appsecondaryColor,
                    ),
                    onPressed: () {
                      setState(() {
                        _isConfirmPasswordHidden = !_isConfirmPasswordHidden;
                      });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.030),
            CustomElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PasswordSucessScreen(),
                ),
              );
            }, title: 'Create New Password'),
            SizedBox(height: screenHeight * 0.030),
          ],
        ),
      ),
    );
  }
}
