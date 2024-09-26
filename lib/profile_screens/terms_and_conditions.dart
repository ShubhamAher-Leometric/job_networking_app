import 'package:flutter/material.dart';
import 'package:job_networking_app/menu_screen.dart';
import 'package:job_networking_app/sucess_screens/profile_scucess_screen.dart';

import '../constants/color_constants.dart';
import '../constants/custom_elevated_button.dart';

class TermsAndConditionsPage extends StatefulWidget {
  const TermsAndConditionsPage({super.key});

  @override
  State<TermsAndConditionsPage> createState() => _TermsAndConditionsPageState();
}

class _TermsAndConditionsPageState extends State<TermsAndConditionsPage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height:screenHeight * 0.10,
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios_new_rounded,size: 24,),
                    Text(
                        'Back',
                        style: const TextStyle(fontWeight: FontWeight.bold)
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Terms and Condition',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: appTextColor,
              ),
            ),
            SizedBox(height: 10,),
            const Text(
              'Welcome to Fast aff , a platform designed to connect daily wage employees and employers. By using our platform, you agree to comply with and be bound by the following terms and conditions',
              style: TextStyle(fontSize: 12, color: appTextColor2,fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: screenHeight * 0.022),
            Row(
              children: [
                Icon(Icons.circle_sharp,size: 8,color: appTextColor2,),
                SizedBox(width: 10,),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "I agree to the app’s terms, conditions, and privacy policy",
                          style: TextStyle(color: appTextColor2,fontWeight: FontWeight.w500,fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.030),
            Row(
              children: [
                Icon(Icons.circle_sharp,size: 8,color: appTextColor2,),
                SizedBox(width: 10,),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "All users must provide accurate and complete information during registration. Any false information may lead to account suspension or termination.",
                          style: TextStyle(color: appTextColor2,fontWeight: FontWeight.w500,fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.030), Row(
              children: [
                Icon(Icons.circle_sharp,size: 8,color: appTextColor2,),
                SizedBox(width: 10,),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Our platform allows employees to apply for jobs and employers to post job openings. Users are responsible for the accuracy of job postings and applications",
                          style: TextStyle(color: appTextColor2,fontWeight: FontWeight.w500,fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.030), Row(
              children: [
                Icon(Icons.circle_sharp,size: 8,color: appTextColor2,),
                SizedBox(width: 10,),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Employees apply for jobs at their own discretion. The company holds no responsibility for the outcomes of applications or employment relationships established through the platform.",
                          style: TextStyle(color: appTextColor2,fontWeight: FontWeight.w500,fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.030), Row(
              children: [
                Icon(Icons.circle_sharp,size: 8,color: appTextColor2,),
                SizedBox(width: 10,),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Payment for jobs is arranged directly between the employer and employee .Fast aff is not responsible for payment disputes but encourages users to resolve them directly with each other.",
                          style: TextStyle(color: appTextColor2,fontWeight: FontWeight.w500,fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.030), Row(
              children: [
                Icon(Icons.circle_sharp,size: 8,color: appTextColor2,),
                SizedBox(width: 10,),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Users can rate and review their job experience and employers after completing a job. Reviews must be truthful and not contain offensive or defamatory content.",
                          style: TextStyle(color: appTextColor2,fontWeight: FontWeight.w500,fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.030), Row(
              children: [
                Icon(Icons.circle_sharp,size: 8,color: appTextColor2,),
                SizedBox(width: 10,),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "We respect your privacy and are committed to protecting your personal information. By using the platform, you consent to our collection, use, and sharing of your data as described in our Privacy Policy.",
                          style: TextStyle(color: appTextColor2,fontWeight: FontWeight.w500,fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.030), Row(
              children: [
                Icon(Icons.circle_sharp,size: 8,color: appTextColor2,),
                SizedBox(width: 10,),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "We reserve the right to suspend or terminate your account if you violate these terms or engage in illegal or harmful activities.",
                          style: TextStyle(color: appTextColor2,fontWeight: FontWeight.w500,fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.030),
            CustomElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScucessScreen(),
                ),
              );
            }, title: 'Create Profile'),
            SizedBox(height: screenHeight * 0.030),
          ],
        ),
      ),
    );
  }
}
