import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_networking_app/onbording_screens/forget_otp_screen.dart';

import '../constants/color_constants.dart';
import '../constants/custom_elevated_button.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
                'Reset Password',
                style: TextStyle(
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.bold,
                  color: appTextColor,
                ),
              ),
              const Text(
                'Select with contact details we should use to reset your password',
                style: TextStyle(fontSize: 12, color: appTextColor2,fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenHeight * 0.011),
              SizedBox(height: screenHeight * 0.022),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: appPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          color: appPrimaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.mail_outline_rounded)),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: const TextField(
                              cursorColor: appPrimaryColor,
                              decoration: InputDecoration(
                                hintText: 'pratiksha@gmail.com',
                                isDense: true,
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color:appPrimaryColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.030),
              CustomElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgetOtpScreen(), 
                  ),
                );
              }, title: 'Continue'),
            ],
          ),
        ),
      ),
    );
  }

}
