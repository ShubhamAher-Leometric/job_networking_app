import 'package:flutter/material.dart';
import 'package:job_networking_app/details_screens/edit_education_screen.dart';
import 'package:job_networking_app/details_screens/edit_personal_information_screen.dart';
import 'package:job_networking_app/details_screens/edit_work_history.dart';
import 'package:job_networking_app/details_screens/resume_upload_screen.dart';

import '../constants/color_constants.dart';

class ProfileOverviewScreen extends StatefulWidget {
  const ProfileOverviewScreen({super.key});

  @override
  State<ProfileOverviewScreen> createState() => _ProfileOverviewScreenState();
}

class _ProfileOverviewScreenState extends State<ProfileOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    double titleFontSize = screenWidth * 0.08;
    return Scaffold(
      backgroundColor: appbackgroundColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05, vertical: 20),
        child: Center(
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
                          'Profile Overview',
                          style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16)
                      ),
                      Spacer(),
                      SizedBox(width: 24,),
                      // Image.asset('assets/icons/filter.png',height: 24,width: 24,)
                    ],
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0),
                ),
                child: Container(
                  color: appcardColor,
                  width: double.infinity,
                  // height: MediaQuery.of(context).size.height / 3,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width/1-60,
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10,),
                                      Text('Personal Information',style: TextStyle(fontSize: 16,
                                          fontWeight: FontWeight.w600,color: appTextColor),),
                                      Spacer(),
                                      GestureDetector(
                                          onTap: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => EditPersonalInformationScreen(),
                                              ),
                                            );
                                          },
                                          child: Image.asset('assets/icons/edit.png',height: 20,width: 20,)),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Text('Haley Jessica',style: TextStyle(fontSize: 14,
                                        fontWeight: FontWeight.w500,color: appTextColor2),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Text('haley.jessica@gmail.com',style: TextStyle(fontSize: 14,
                                        fontWeight: FontWeight.w500,color: appTextColor2),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Text('+41 79 123 4567',style: TextStyle(fontSize: 14,
                                        fontWeight: FontWeight.w500,color: appTextColor2),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Text('Zurich, Switzerland',style: TextStyle(fontSize: 14,
                                        fontWeight: FontWeight.w500,color: appTextColor2),),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0),
                ),
                child: Container(
                  color: appcardColor,
                  width: double.infinity,
                  // height: MediaQuery.of(context).size.height / 3,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width/1-60,
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10,),
                                      Text('Resume',style: TextStyle(fontSize: 16,
                                          fontWeight: FontWeight.w600,color: appTextColor),),
                                      Spacer(),
                                      GestureDetector(
                                          onTap: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => ResumeUploadScreen(),
                                              ),
                                            );
                                          },
                                          child: Image.asset('assets/icons/edit.png',height: 20,width: 20,)),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                    color: appsubcardColor,
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  width: MediaQuery.of(context).size.width/1.5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/icons/pdf_icon.png',height: 45,),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Rifat_CV_UX Designer',style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.w500,color: appTextColor),),
                                            Text('287 KB',style: TextStyle(fontSize: 11,
                                                fontWeight: FontWeight.w400,color: appTextColor2),),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                              ],
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0),
                ),
                child: Container(
                  color: appcardColor,
                  width: double.infinity,
                  // height: MediaQuery.of(context).size.height / 3,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width/1-60,
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10,),
                                      Text('Education',style: TextStyle(fontSize: 16,
                                          fontWeight: FontWeight.w600,color: appTextColor),),
                                      Spacer(),
                                      GestureDetector(
                                          onTap: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => EditEducationScreen(),
                                              ),
                                            );
                                          },
                                          child: Image.asset('assets/icons/edit.png',height: 20,width: 20,)),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Text('Degree: Bachelor\'s in Computer Science',style: TextStyle(fontSize: 14,
                                        fontWeight: FontWeight.w500,color: appTextColor2),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Text('Institution: University of Zurich',style: TextStyle(fontSize: 14,
                                        fontWeight: FontWeight.w500,color: appTextColor2),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Text('Location: Zurich',style: TextStyle(fontSize: 14,
                                        fontWeight: FontWeight.w500,color: appTextColor2),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Text('Graduation Year: 2017 - 2020',style: TextStyle(fontSize: 14,
                                        fontWeight: FontWeight.w500,color: appTextColor2),),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0),
                ),
                child: Container(
                  color: appcardColor,
                  width: double.infinity,
                  // height: MediaQuery.of(context).size.height / 3,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width/1-60,
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10,),
                                      Text('Work history',style: TextStyle(fontSize: 16,
                                          fontWeight: FontWeight.w600,color: appTextColor),),
                                      Spacer(),
                                      GestureDetector(
                                          onTap: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => EditWorkHistory(),
                                              ),
                                            );
                                          },
                                          child: Image.asset('assets/icons/edit.png',height: 20,width: 20,)),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Text('Job Title: Warehouse Packer',style: TextStyle(fontSize: 14,
                                        fontWeight: FontWeight.w500,color: appTextColor2),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Text('Company: Bulkway',style: TextStyle(fontSize: 14,
                                        fontWeight: FontWeight.w500,color: appTextColor2),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Text('Location: Geneva Switzerland',style: TextStyle(fontSize: 14,
                                        fontWeight: FontWeight.w500,color: appTextColor2),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Text('Time Period: Dec 20 - Dec 21 2024',style: TextStyle(fontSize: 14,
                                        fontWeight: FontWeight.w500,color: appTextColor2),),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),  ],
          ),
        ),
      ),    );
  }
}
