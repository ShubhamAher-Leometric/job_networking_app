import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import '../constants/custom_elevated_button.dart';
import '../menu_screen.dart';

class ProfileScucessScreen extends StatefulWidget {
  const ProfileScucessScreen({super.key});

  @override
  State<ProfileScucessScreen> createState() => _ProfileScucessScreenState();
}

class _ProfileScucessScreenState extends State<ProfileScucessScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;

    return Scaffold(
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
                  Text('Profile Successfully',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
                  Text('Created',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
                  SizedBox(height: screenHeight * 0.010),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60.0),
                    child: Text(' Your Profile has been Successfully created!',textAlign: TextAlign.center,
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
                          builder: (context) => MenuScreen(),
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
