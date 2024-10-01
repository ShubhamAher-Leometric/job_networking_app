import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

class TrackJobScreen extends StatefulWidget {
  const TrackJobScreen({super.key});

  @override
  State<TrackJobScreen> createState() => _TrackJobScreenState();
}

class _TrackJobScreenState extends State<TrackJobScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    double titleFontSize = screenWidth * 0.08;
    return Scaffold(
      backgroundColor: appbackgroundColor,
      appBar: AppBar(
        backgroundColor: appbackgroundColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'My Application Status',
            style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 18)
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: appcardColor,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Warehouse Packer',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                            Spacer(),
                            Container(
                                decoration: BoxDecoration(
                                    color: appPrimaryColor,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 3),
                                child: Text('Pending',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                              ),
                              )
                          ],
                        ),
                        Row(
                          children: [
                            Text('Urbanclick',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: appTextColor5),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Geneva, Switzerland',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: appTextColor6),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Applied on: 15th September, 2024',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: appTextColor7),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Salary: \$15/hour',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: appTextColor7),),
                          ],
                        ),
                        SizedBox(height:10,),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: appsecondaryColor,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
                                child: Text('Chat with Employer',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: appbackgroundColor),),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height:5,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: appcardColor,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Sorter',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                  color: appPrimaryColor,
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 3),
                                child: Text('Pending',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text('Urbanclick',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: appTextColor5),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Geneva, Switzerland',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: appTextColor6),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Applied on: 15th September, 2024',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: appTextColor7),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Salary: \$15/hour',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: appTextColor7),),
                          ],
                        ),
                        SizedBox(height:10,),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: appsecondaryColor,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
                                child: Text('Chat with Employer',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: appbackgroundColor),),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height:5,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: appcardColor,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Delivery Driver',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                  color: appPrimaryColor,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 3),
                                child: Text('Pending',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text('Urbanclick',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: appTextColor5),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Geneva, Switzerland',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: appTextColor6),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Applied on: 15th September, 2024',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: appTextColor7),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Salary: \$15/hour',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: appTextColor7),),
                          ],
                        ),
                        SizedBox(height:10,),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: appsecondaryColor,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                                child: Text('Chat with Employer',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: appbackgroundColor),),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height:5,),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),    );
  }
}
