import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_networking_app/onbording_screens/otp_screen.dart';

import '../constants/color_constants.dart';
import '../constants/custom_elevated_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.10),
              Text(
                'Create Account',
                style: TextStyle(
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.bold,
                  color: appTextColor,
                ),
              ),
              const Text(
                'Hi, Welcome back you’ve been missed',
                style: TextStyle(fontSize: 13, color: appTextColor2),
              ),
              SizedBox(height: screenHeight * 0.011),
              SizedBox(height: screenHeight * 0.022),
              SizedBox(
                height: screenHeight * 0.08,
                child: TextField(
                  style: TextStyle(color: appTextfilledColor),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: appTextfilledColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appTextfilledColor),
                      ),
                      labelText: 'Name',
                      labelStyle: TextStyle(color: appTextfilledColor)
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.030),
              SizedBox(
                height: screenHeight * 0.08,
                child: TextField(
                  style: TextStyle(color: appTextfilledColor),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: appTextfilledColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appTextfilledColor),
                      ),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: appTextfilledColor)
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.030),
              SizedBox(
                height: screenHeight * 0.08,
                child: TextField(
                  style: TextStyle(color: appTextfilledColor),
                  obscureText: _isPasswordHidden,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: appTextfilledColor), // Set border color
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: appTextfilledColor), // Set focused border color
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: appTextfilledColor),
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordHidden ? Icons.visibility_off : Icons.visibility,
                        color: appTextfilledColor,
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
                  style: TextStyle(color: appTextfilledColor),
                  obscureText: _isConfirmPasswordHidden,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: appTextfilledColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: appTextfilledColor),
                    ),
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(color: appTextfilledColor),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isConfirmPasswordHidden ? Icons.visibility_off : Icons.visibility,
                        color: appTextfilledColor,
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
                    builder: (context) => OtpPage(),
                  ),
                );
              }, title: 'Sign Up'),
              SizedBox(height: screenHeight * 0.030),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 40,),
                  Expanded(child: Divider(color: appTextColor2,)),
                  SizedBox(width: 10,),
                  Text('Or sign in with',
                    style: TextStyle(color: appTextColor2,fontSize: 12,fontWeight: FontWeight.w400),),
                  SizedBox(width: 10,),
                  Expanded(child: Divider(color: appTextColor2,)),
                  SizedBox(width: 40,),
                ],
              ),
              SizedBox(height: screenHeight * 0.030),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: appTextColor2)
                      ),
                      child: Image.asset('assets/icons/apple.png',height: 24,width: 24,)),
                  SizedBox(width: 10,),
                  Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: appTextColor2)
                      ),
                      child: Image.asset('assets/icons/google.png',height: 24,width: 24,)),                    SizedBox(width: 10,),
                  Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: appTextColor2)
                      ),
                      child: Image.asset('assets/icons/facebook.png',height: 24,width: 24,)),                  ],
              ),
              SizedBox(height: screenHeight * 0.030),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account? ',
                    style:TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: appTextColor),),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Text('Sign In',
                      style:TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: appPrimaryColor),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
