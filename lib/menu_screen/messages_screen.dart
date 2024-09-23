import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_networking_app/details_screens/chat_screen.dart';
import 'package:job_networking_app/details_screens/new_message_screen.dart';

import '../constants/color_constants.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    double titleFontSize = screenWidth * 0.08;
    return Scaffold(
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
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_ios_new_rounded,size: 24,),
                      Spacer(),
                      Text(
                          'Messages',
                          style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16)
                      ),
                      Spacer(),
                      GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NewMessageScreen(),
                              ),
                            );
                          },
                          child: Image.asset('assets/icons/edit.png',height: 24,width: 24,))
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: appTextColor2.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.search,size: 26,),
                    SizedBox(width: 10,),
                    Container(
                        width: MediaQuery.of(context).size.width/1.6,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,  // Removes the underline
                              hintText: 'Search Messages',
                              hintStyle: TextStyle(color: appTextfilledColor,
                                  fontSize: 16,fontWeight: FontWeight.w400)
                          ),
                        )),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatScreen(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                            height: 55,
                            width: 55,
                            child: Image.asset('assets/temp_images/dummy_user.png')),
                      ],
                    ),
                    SizedBox(width: 9,),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/1-100,
                          child: Row(
                            children: [
                              Expanded(child: Text('Layla B',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)),
                              Text('16:48',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width/1-100,
                          child: Row(
                            children: [
                              Expanded(
                                child: Text('The reviews are very good, I guess we shall see Layla, I have a good feeling about it.',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                          height: 55,
                          width: 55,
                          child: Image.asset('assets/temp_images/dummy_user2.png')),
                    ],
                  ),
                  SizedBox(width: 9,),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/1-100,
                        child: Row(
                          children: [
                            Expanded(child: Text('Kevin doors',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)),
                            Text('16:48',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/1-100,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text('Alright ! Got it.',
                                style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: appPrimaryColor,
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('25',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Divider(),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                          height: 55,
                          width: 55,
                          child: Image.asset('assets/temp_images/dummy_user3.png')),
                    ],
                  ),
                  SizedBox(width: 9,),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/1-100,
                        child: Row(
                          children: [
                            Expanded(child: Text('Candice',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)),
                            Text('16:48',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/1-100,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text('The reviews are very good, I guess we shall see Layla, I have a good feeling about it.',
                                style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: appPrimaryColor,
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('2',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Divider(),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                          height: 55,
                          width: 55,
                          child: Image.asset('assets/temp_images/dummy_user4.png')),
                    ],
                  ),
                  SizedBox(width: 9,),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/1-100,
                        child: Row(
                          children: [
                            Expanded(child: Text('Jens Kidman',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)),
                            Text('Yesterday',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/1-100,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text('The reviews are very good, I guess we shall see Layla, I have a good feeling about it.',
                                style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Divider(),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                          height: 55,
                          width: 55,
                          child: Image.asset('assets/temp_images/dummy_user5.png')),
                    ],
                  ),
                  SizedBox(width: 9,),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/1-100,
                        child: Row(
                          children: [
                            Expanded(child: Text('Kylie Stew',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)),
                            Text('Monday',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/1-100,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text('The reviews are very good, I guess we shall see Layla, I have a good feeling about it.',
                                style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Divider(),
            ],
          ),
        ),
      ),    );
  }
}
