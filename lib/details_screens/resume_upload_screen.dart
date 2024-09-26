import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:job_networking_app/constants/color_constants.dart';
import 'package:job_networking_app/constants/custom_elevated_button.dart';

class ResumeUploadScreen extends StatefulWidget {
  const ResumeUploadScreen({super.key});

  @override
  State<ResumeUploadScreen> createState() => _ResumeUploadScreenState();
}

class _ResumeUploadScreenState extends State<ResumeUploadScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return Scaffold(
      body: SingleChildScrollView(
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
                      Icon(Icons.arrow_back_ios_new_rounded,size: 24,),
                      Spacer(),
                      Text(
                          'Resume Upload',
                          style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16)
                      ),
                      Spacer(),
                      SizedBox(width: 24,),
                      // Image.asset('assets/icons/filter.png',height: 24,width: 24,)
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Text('Resume or CV', style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: appsecondaryColor),),
                ],
              ),
              SizedBox(height: screenHeight * 0.030),
              DottedBorder(
                color: appTextColor2,
                strokeWidth: 2,
                dashPattern: [6, 3],
                borderType: BorderType.RRect,
                radius: Radius.circular(10),
                child:Column(
                  children: [
                    SizedBox(height: screenHeight * 0.030),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text('Upload your CV or Resume and use it when you apply for jobs',
                      style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: appTextColor2),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.030),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0),
                        ),
                        child: Container(
                          color: appcardColor,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 10,),
                                        Container(
                                          width: MediaQuery.of(context).size.width/1.5,
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
                    ),
                    SizedBox(height: screenHeight * 0.030),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: CustomElevatedButton(onPressed: (){}, title: 'Add More'),
                    ),
                    SizedBox(height: screenHeight * 0.030),
                  ],
                )


              ),
        
            ],
          ),
        ),
      ),    );
  }
}
