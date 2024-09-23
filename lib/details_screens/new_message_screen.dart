import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

class NewMessageScreen extends StatefulWidget {
  const NewMessageScreen({super.key});

  @override
  State<NewMessageScreen> createState() => _NewMessageScreenState();
}

class _NewMessageScreenState extends State<NewMessageScreen> {
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
                          'New Messages',
                          style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16)
                      ),
                      Spacer(),
                      Container(height: 24,width: 24,)
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
                    Container(child: Text('To:',style: TextStyle(color: appTextColor,fontWeight: FontWeight.w400,fontSize: 16),)),
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
              Row(
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
