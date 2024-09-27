import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_networking_app/details_screens/track_job_screen.dart';

import '../constants/color_constants.dart';
import '../constants/custom_elevated_button.dart';

class JobApplySucessScreen extends StatefulWidget {
  const JobApplySucessScreen({super.key});

  @override
  State<JobApplySucessScreen> createState() => _JobApplySucessScreenState();
}

class _JobApplySucessScreenState extends State<JobApplySucessScreen> {
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
                  Text('Thank you for your ',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
                  Text('application!',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
                  SizedBox(height: screenHeight * 0.010),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60.0),
                    child: Text('Your application has been successfully submitted',textAlign: TextAlign.center,
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
                          builder: (context) => TrackJobScreen(),
                        ),
                      );
                    }, title: 'Track Job'),
                  ),
                  SizedBox(height: screenHeight * 0.030),
                  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    height: 56,
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(appbackgroundColor),
                        elevation: WidgetStateProperty.all(0),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                            side: BorderSide(color: appsecondaryColor, width: 2),
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                      ),
                      child: Text(
                        'Back to Home',
                        style: TextStyle(color: appsecondaryColor,fontSize: 16,fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
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
