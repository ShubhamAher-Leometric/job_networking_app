import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_networking_app/onbording_screens/login_screen.dart';

import '../constants/color_constants.dart';
import '../constants/custom_elevated_button.dart';

class PasswordSucessScreen extends StatefulWidget {
  const PasswordSucessScreen({super.key});

  @override
  State<PasswordSucessScreen> createState() => _PasswordSucessScreenState();
}

class _PasswordSucessScreenState extends State<PasswordSucessScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;

    return Scaffold(
      backgroundColor: appbackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: screenHeight * 0.030),
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/icons/Yellow_success.png'),
                  ),
                  SizedBox(height: screenHeight * 0.030),
                  Text('Password Updated',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
                  Text('Successfully',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
                  SizedBox(height: screenHeight * 0.010),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60.0),
                    child: Text(' Password changed succesfully, you can login again with new password!',textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: appTextColor2),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.030),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: CustomElevatedButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    }, title: 'Done'),
                  ),
                  SizedBox(height: screenHeight * 0.030),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
