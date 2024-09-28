import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import '../profile_screens/stand_out_screen.dart';

class SliderScreen3 extends StatefulWidget {
  const SliderScreen3({super.key});

  @override
  State<SliderScreen3> createState() => _SliderScreen3State();
}

class _SliderScreen3State extends State<SliderScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appbackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            Container(
                height: MediaQuery.of(context).size.height/1.83,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/images/Walkthrough 3.png'),
                )),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Unlock Opportunities',
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              color: appsecondaryColor
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Start Your Journey',
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              color: appPrimaryColor
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Helping you connect with the right employers quickly and Match with jobs that suit your skills and availability.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    child: Center(
                      child: Text(
                        'Skip',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(Icons.circle_rounded,size: 10,color: appPrimaryColor.withOpacity(0.6),),
                      Icon(Icons.circle_rounded,size: 10,color: appPrimaryColor.withOpacity(0.6),),
                      Icon(Icons.circle_rounded,size: 14,color: appPrimaryColor,),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StandOutScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: appTextColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.arrow_forward, color: appbackgroundColor),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/20,)
          ],
        ),
      ),
    );
  }

}
