import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_networking_app/constants/color_constants.dart';
import 'package:job_networking_app/details_screens/profile_overview_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appbackgroundColor,
      body: SafeArea(
          child: Column(
          children: [
          Container(
            height: 150,
            color: appPrimaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_outlined,size: 24,),
                          Spacer(),
                          Text(
                              'My profile',
                              style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 18)
                          ),
                          Spacer(),
                          SizedBox(height: 24,width: 24,)
                        ],
                      ),
                    ),
                    Positioned(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                          Container(
                          height: 130,
                              width: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  color: appbackgroundColor
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Image.asset('assets/temp_images/dummy_user3.png',height: 120),
                              )),
                            ],
                          ),
                        )),
                    Positioned(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 55.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 100,),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: appbackgroundColor
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                  child: Row(
                                    children: [
                                      Text('4.2',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                      Icon(Icons.star,color: appPrimaryColor,size: 15,)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ),
            SizedBox(height: 40,),
            Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Haley Jessica',style: const TextStyle(fontWeight: FontWeight.w700,fontSize: 20)),
            ],
          ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Warehouse Packer',style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: appTextColor2)),
              ],
            ),
            SizedBox(height: 10,),
            Container(
          decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: appcardColor,
  ),
          child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      children: [
        Image.asset('assets/icons/Person.png',height: 24,width: 24,),
        SizedBox(width: 10,),
        Text('Personal Information',style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: appTextColor4)),
        Spacer(),
        GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileOverviewScreen(),
                ),
              );
            },
            child: Image.asset('assets/icons/edit.png',height: 24,width: 24,)),
        SizedBox(width: 10,),
      ],
    ),
  ),
          ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: appcardColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Image.asset('assets/icons/Help.png',height: 24,width: 24,),
                    SizedBox(width: 10,),
                    Text('FAQ',style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: appTextColor4)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: appcardColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Image.asset('assets/icons/Settings.png',height: 24,width: 24,),
                    SizedBox(width: 10,),
                    Text('Settings',style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: appTextColor4)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: appcardColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Image.asset('assets/icons/Logout.png',height: 24,width: 24,),
                    SizedBox(width: 10,),
                    Text('Logout',style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: appTextColor4)),
                  ],
                ),
              ),
            ),
        ],
      )),
    );
  }
}
