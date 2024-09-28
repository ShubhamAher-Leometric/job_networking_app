import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import '../constants/custom_elevated_button.dart';
import '../sucess_screens/review_success_screen.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return Scaffold(
      backgroundColor: appbackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: appPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.arrow_back_outlined),
                        Spacer(),
                        Text('Add Review',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),
                        Spacer(),
                       SizedBox(width: 20,)
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 30),
                    Image.asset('assets/temp_images/logo_container.png', height: 80, width: 80),
                    SizedBox(height: 10),
                    Text(
                      'BulkBuy',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600, color: appTextColor),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.030),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
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
                      labelText: 'Review title',
                      labelStyle: TextStyle(color: appTextfilledColor)
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.030),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
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
                      labelText: 'Job title',
                      labelStyle: TextStyle(color: appTextfilledColor)
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.030),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
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
                      labelText: 'Write your Review',
                      labelStyle: TextStyle(color: appTextfilledColor)
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.030),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text('Give a Review',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Icon(Icons.star,color: appPrimaryColor,),
                  Icon(Icons.star,color: appPrimaryColor,),
                  Icon(Icons.star,color: appPrimaryColor,),
                  Icon(Icons.star,color: appPrimaryColor,),
                  Icon(Icons.star_border_outlined,color: appTextColor2,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Spacer(),
            Container(
              width: screenWidth * 0.6,
              height: screenHeight * 0.08,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReviewSuccessScreen(),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(appsecondaryColor),
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
                  'Submit',
                  style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
