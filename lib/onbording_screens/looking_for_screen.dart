import 'package:flutter/material.dart';
import 'package:job_networking_app/constants/color_constants.dart';
import 'package:job_networking_app/onbording_screens/slider_screen.dart';

import '../constants/custom_elevated_button.dart';

class LookingForScreen extends StatefulWidget {
  const LookingForScreen({super.key});

  @override
  State<LookingForScreen> createState() => _LookingForScreenState();
}

class _LookingForScreenState extends State<LookingForScreen> {
  String _selectedValue = 'Employee';
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return Scaffold(
      backgroundColor: appbackgroundColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/gradient_bg.png',
            fit: BoxFit.cover,
          ),
          Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/icons/main_logo2.png',
                      height: 200,
                      width: 200,
                    ),
                    Text(
                      'Select Whether you’re seeking employment opportunities or your organization requires talented individuals.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.030),
                    Text('What are you looking for?',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                    SizedBox(height: screenHeight * 0.030),
                    Container(
                      height: screenHeight * 0.08,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          Image.asset(
                            'assets/icons/bag_logo.png',
                            height: 30,
                            width: 30,
                          ),
                          SizedBox(width: 8),
                          Text('Find a job',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                          Spacer(), // Add a comma here
                          Radio<String>(
                              visualDensity: VisualDensity.compact,
                              value: 'Employee',
                            groupValue: _selectedValue,
                            activeColor: appTextColor,
                          onChanged: (String? value) {
                          if (value != null) {
                          setState(() {
                          _selectedValue = value; // Update state
                          });
                          }}

                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: screenHeight * 0.08,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          Image.asset(
                            'assets/icons/Employee.png',
                            height: 30,
                            width: 30,
                          ),
                          SizedBox(width: 8),
                          Text('Find an Employee',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                          Spacer(),
                          Radio<String>(
                              visualDensity: VisualDensity.compact,
                              value: 'Employer',
                            groupValue: _selectedValue,
                            activeColor: appTextColor,
                              onChanged: (String? value) {
                                if (value != null) {
                                  setState(() {
                                    _selectedValue = value; // Update state
                                  });
                                }}
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.030),
                    CustomElevatedButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SliderScreen(),
                        ),
                      );
                    }, title: 'Continue'),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
