import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_networking_app/constants/color_constants.dart';
import 'package:job_networking_app/profile_screens/create_profile_screen_1.dart';

class StandOutScreen extends StatefulWidget {
  const StandOutScreen({super.key});

  @override
  State<StandOutScreen> createState() => _StandOutScreenState();
}

class _StandOutScreenState extends State<StandOutScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return Scaffold(
      body: Stack(
        children: [
          Center(child: Image.asset('assets/images/walkthrough_4.png')),
          Positioned(
            bottom: 0,
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: appbackgroundColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.020),
                  Column(
                    children: [
                      Text(
                        'Stand Out and',
                        style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Get Hired',
                        style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700,color: appPrimaryColor),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.020),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'A complete profile helps you connect with the best employers and land jobs faster, Let employers know what you can do.',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.020),
                  Container(
                    height: screenHeight * 0.08,
                    width: screenWidth * 0.70,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreateProfileScreen_1(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(appsecondaryColor),
                        elevation: WidgetStateProperty.all(0),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        minimumSize: WidgetStateProperty.all(
                            Size(double.infinity, 50)),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Complete Your Profile',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(width: 10,),
                          Icon(Icons.arrow_forward_outlined)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
