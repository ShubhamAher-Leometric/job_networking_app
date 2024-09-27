import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import '../constants/custom_elevated_button.dart';

class EditEducationScreen extends StatefulWidget {
  const EditEducationScreen({super.key});

  @override
  State<EditEducationScreen> createState() => _EditEducationScreenState();
}

class _EditEducationScreenState extends State<EditEducationScreen> {
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
                          'Education',
                          style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16)
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
                      labelText: 'Degree',
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
                      labelText: 'Institution',
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
                      labelText: 'Graduation year',
                      labelStyle: TextStyle(color: appTextfilledColor)
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.030),
              Container(
                height: screenHeight * 0.08,
                child: ElevatedButton(
                  onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(appTextColor2.withOpacity(0.2)),
                    elevation: WidgetStateProperty.all(0),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: Text(
                    'Add More',
                    style: TextStyle(color: appsecondaryColor,fontSize: 16,fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: 20,),
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
                height: screenHeight * 0.08,
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
