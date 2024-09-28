import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import '../constants/custom_elevated_button.dart';

class EditPersonalInformationScreen extends StatefulWidget {
  const EditPersonalInformationScreen({super.key});

  @override
  State<EditPersonalInformationScreen> createState() => _EditPersonalInformationScreenState();
}

class _EditPersonalInformationScreenState extends State<EditPersonalInformationScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return Scaffold(
      backgroundColor: appbackgroundColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height:screenHeight * 0.10,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);},
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_outlined,size: 24,),
                      Spacer(),
                      Text(
                          'Personal Information',
                          style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 18)
                      ),
                      Spacer(),
                      SizedBox(width: 24,),
                      // Image.asset('assets/icons/filter.png',height: 24,width: 24,)
                    ],
                  ),
                ),
              ),

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
                      labelText: 'Full Name',
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
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: appTextfilledColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appTextfilledColor),
                      ),
                      labelText: 'Phone number',
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
                      labelText: 'Location',
                      labelStyle: TextStyle(color: appTextfilledColor)
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.030),
              Spacer(),
              CustomElevatedButton(onPressed: (){
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => TrackJobScreen(),
                //   ),
                // );
              }, title: 'Save'),
              SizedBox(height: screenHeight * 0.030),
              Container(
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
                    'Cancel',
                    style: TextStyle(color: appsecondaryColor,fontSize: 16,fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.030),
            ],
          ),
        ),
      ),    );
  }
}
