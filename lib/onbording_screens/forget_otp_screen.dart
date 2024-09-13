import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_networking_app/onbording_screens/new_password_screen.dart';
import 'package:pinput/pinput.dart';

import '../constants/color_constants.dart';
import '../constants/custom_elevated_button.dart';

class ForgetOtpScreen extends StatefulWidget {
  const ForgetOtpScreen({super.key});

  @override
  State<ForgetOtpScreen> createState() => _ForgetOtpScreenState();
}

class _ForgetOtpScreenState extends State<ForgetOtpScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    double titleFontSize = screenWidth * 0.08;

    final defaultPinTheme = PinTheme(
      width: screenWidth * 0.12,
      height: screenWidth * 0.13,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey),
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05, vertical: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                'Verify Code',
                style: TextStyle(
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.bold,
                  color: appTextColor,
                ),
              ),
              const Text(
                'Please enter the code we just sent to email\n'
                    'pratiksha.g@gmail.com',
                style: TextStyle(fontSize: 13, color: appTextColor2,),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenHeight * 0.011),
              SizedBox(height: screenHeight * 0.022),
              Pinput(
                length: 4,
                defaultPinTheme: defaultPinTheme.copyWith(
                  width: screenWidth * 0.13,
                  height: screenWidth * 0.14,
                  decoration: defaultPinTheme.decoration!.copyWith(
                    border: Border.all(color: appOTPBg),
                    color: appOTPBg,
                  ),
                  textStyle: TextStyle(
                    color: appTextColor,
                    fontSize: 22,
                  ),
                ),
                focusedPinTheme: defaultPinTheme.copyWith(
                  width: screenWidth * 0.12,
                  height: screenWidth * 0.13,
                  decoration: defaultPinTheme.decoration!.copyWith(
                    border: Border.all(color: Colors.grey),
                    color: appOTPBg,
                  ),
                  textStyle: TextStyle(
                    color: appTextColor,
                    fontSize: 22,
                  ),
                ),
                // controller: otpController,
              ),
              SizedBox(height: screenHeight * 0.030),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't Receive Code? ",
                    style: TextStyle(
                      color: appTextColor2,
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Resend Code",
                    style: TextStyle(
                      color: appPrimaryColor,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.030),
              CustomElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewPasswordScreen(),
                  ),
                );
              }, title: 'Verify'),
            ],
          ),
        ),
      ),
    );
  }
}
