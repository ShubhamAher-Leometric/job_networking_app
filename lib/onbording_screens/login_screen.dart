import 'package:flutter/material.dart';
import 'package:job_networking_app/constants/color_constants.dart';
import 'package:job_networking_app/constants/custom_elevated_button.dart';
import 'package:job_networking_app/onbording_screens/forgot_password_screen.dart';
import 'package:job_networking_app/onbording_screens/looking_for_screen.dart';
import 'package:job_networking_app/onbording_screens/otp_screen.dart';
import 'package:job_networking_app/onbording_screens/reset_password_screen.dart';
import 'package:job_networking_app/onbording_screens/sign_up_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    double titleFontSize = screenWidth * 0.08;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.10),
              Text(
                'Sign In',
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
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: appsecondaryColor), // Set border color
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: appsecondaryColor), // Set focused border color
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: appsecondaryColor)
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.030),
              SizedBox(
                height: screenHeight * 0.08,
                child: TextField(
                  controller: passwordController,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResetPasswordScreen(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero, // Remove default padding
                    ),
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(fontSize: 16, color:appPrimaryColor),
                    ),
                  ),
                ],
              ),
              CustomElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LookingForScreen(),
                  ),
                );
              }, title: 'Sign In'),
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
                      child: Image.asset('assets/icons/social_login1.png',height: 24,width: 24,)),
                  SizedBox(width: 10,),
                  Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: appTextColor2)
                      ),
                      child: Image.asset('assets/icons/social_login2.png',height: 24,width: 24,)),                    SizedBox(width: 10,),
                  Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: appTextColor2)
                      ),
                      child: Image.asset('assets/icons/social_login3.png',height: 24,width: 24,)),                  ],
              ),
              SizedBox(height: screenHeight * 0.030),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account? ',
                    style:TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: appTextColor),),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Text('Sign Up',
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
