import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import 'new_message_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    double titleFontSize = screenWidth * 0.08;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                        Row(
                          children: [
                            Icon(Icons.arrow_back_ios_new_rounded,size: 24,),
                            Image.asset('assets/temp_images/dummy_user4.png',height: 30,width: 30,),
                          ],
                        ),
                        Spacer(),
                        Text(
                            'Jens Kidman',
                            style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16)
                        ),
                        Spacer(),
                        GestureDetector(
                            onTap: (){
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => NewMessageScreen(),
                              //   ),
                              // );
                            },
                            child: Image.asset('assets/icons/menu_chat.png',height: 24,width: 24,))
                      ],
                    ),
                  ),
                ),
                Spacer(),

                Container(
                  height: 20,
                  width: 80,
                  decoration: BoxDecoration(
                    color: appTextColor2.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: appTextColor2)
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text('Sept 09',
                      style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: appTextColor),),
                  )),
                ),

                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset('assets/temp_images/dummy_user3.png',height: 30,width: 30,),
                    SizedBox(width: 10,),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: appTextColor2.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('Hello... do you ?',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: appTextColor),),
                      )),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: appsecondaryColor,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('I am Good Jens',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: appbackgroundColor),),
                      )),
                    ),
                    SizedBox(width: 10,),
                    Image.asset('assets/temp_images/dummy_user3.png',height: 30,width: 30,),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset('assets/temp_images/dummy_user3.png',height: 30,width: 30,),
                    SizedBox(width: 10,),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: appTextColor2.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('I am looking for an opportunity',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: appTextColor),),
                      )),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: appsecondaryColor,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('Ok, Noted',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: appbackgroundColor),),
                      )),
                    ),
                    SizedBox(width: 10,),
                    Image.asset('assets/temp_images/dummy_user3.png',height: 30,width: 30,),
                  ],
                ),
                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset('assets/temp_images/dummy_user3.png',height: 30,width: 30,),
                    SizedBox(width: 10,),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: appTextColor2.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('Will you provide any reference',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: appTextColor),),
                      )),
                    ),
                  ],
                ),
                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: appsecondaryColor,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('Yes, Sure Why not.',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: appbackgroundColor),),
                      )),
                    ),
                    SizedBox(width: 10,),
                    Image.asset('assets/temp_images/dummy_user3.png',height: 30,width: 30,),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset('assets/temp_images/dummy_user3.png',height: 30,width: 30,),
                    SizedBox(width: 10,),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: appTextColor2.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('Thank you 🤘',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: appTextColor),),
                      )),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: appsecondaryColor,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('Please Don’t Mention.',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: appbackgroundColor),),
                      )),
                    ),
                    SizedBox(width: 10,),
                    Image.asset('assets/temp_images/dummy_user3.png',height: 30,width: 30,),
                  ],
                ),
                SizedBox(height: 10,),

                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: appsecondaryColor,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Icon(Icons.add,color: appbackgroundColor,),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: appbackgroundColor,
                            borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: appTextColor2,
                            width: 1.0,
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: ' Start typing...',
                            hintStyle: TextStyle(color: appTextColor2,fontSize: 16,fontWeight: FontWeight.w400)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),

                    Icon(Icons.send_rounded,color: appTextColor,)
                  ],
                ),

              ],
            ),
          ),
        ),
      ),    );
  }

}
