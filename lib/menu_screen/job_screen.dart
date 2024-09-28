import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../constants/color_constants.dart';

class JobScreen extends StatefulWidget {
  const JobScreen({super.key});

  @override
  State<JobScreen> createState() => _JobScreenState();
}

class _JobScreenState extends State<JobScreen> with SingleTickerProviderStateMixin {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late SharedPreferences prefs;
  late TabController _tabController;
  String selected = 'All Jobs';


  @override
  void initState() {
    super.initState();
    setSelectedTab('All Jobs');
    _tabController = TabController(length: 3, vsync: this);  // Define the number of tabs here
  }
  Future<void> setSelectedTab(String tabName) async {
    final SharedPreferences prefs = await _prefs;
    await prefs.setString('selected_tab', tabName);
    print('Selected Tab: $tabName');
  }
  @override
  void dispose() {
    _tabController.dispose();  // Clean up the controller when the widget is disposed.
    super.dispose();
  }
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
                          'My Jobs',
                          style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 18)
                      ),
                      Spacer(),
                      Image.asset('assets/icons/filter.png',height: 24,width: 24,)
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: appcardColor,
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
                              hintText: 'Search jobs by title, location, or category',
                              hintStyle: TextStyle(color: appTextfilledColor,
                                  fontSize: 16,fontWeight: FontWeight.w400)
                          ),
                        )),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 'All Jobs';
                          });
                          setSelectedTab('All Jobs');
                        },
                        child: Text(
                          'All Jobs',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: selected == 'All Jobs'
                                ? appTextColor
                                : appTextColor2,
                          ),
                        ),
                      ),
                      Container(
                        height: 2,
                        width: MediaQuery.of(context).size.width / 3 -
                            20,
                        color: selected == 'All Jobs'
                            ? appTextColor
                            : appTextColor2,
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 'Saved Jobs';
                          });
                          setSelectedTab('Saved Jobs');
                        },
                        child: Text(
                          'Saved Jobs',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: selected == 'Saved Jobs'
                                ? appTextColor
                                : appTextColor2,
                          ),
                        ),
                      ),
                      Container(
                        height: 2,
                        width: MediaQuery.of(context).size.width / 3 -
                            20,
                        color: selected == 'Saved Jobs'
                            ? appTextColor
                            : appTextColor2,
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 'Applied Jobs';
                          });
                          setSelectedTab('Applied Jobs');
                        },
                        child: Text(
                          'Applied Jobs',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: selected == 'Applied Jobs'
                                ? appTextColor
                                : appTextColor2,
                          ),
                        ),
                      ),
                      Container(
                        height: 2,
                        width: MediaQuery.of(context).size.width / 3 -
                            20,
                        color: selected == 'Applied Jobs'
                            ? appTextColor
                            : appTextColor2,
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(height: 20),
              IndexedStack(
                index: selected == 'All Jobs'
                    ? 0
                    : selected == 'Saved Jobs'
                    ? 1
                    : 2,
                children: [
                  jobDescriptionSection(),
                  companyInfoSection(),
                  reviewsSection(),
                ],
              ),
            ],
          ),
        ),
      ),    );
  }

  Widget jobDescriptionSection() {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return Column(
      children: [
        Row(
          children: [
            Text('Top jobs picks for you',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
          ],
        ),
        SizedBox(height: 10,),
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
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
                        children: [
                          Image.asset('assets/temp_images/logo_container.png',height: 50,width: 50,)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/1-110,
                            child: Row(
                              children: [
                                SizedBox(width: 10,),
                                Text('Warehouse Packer',style: TextStyle(fontSize: 16,
                                    fontWeight: FontWeight.w600,color: appTextColor),),
                                Spacer(),
                                Image.asset('assets/icons/close.png',height: 20,width: 20,),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Text('BulkBuy',style: TextStyle(fontSize: 14,
                                  fontWeight: FontWeight.w500,color: appTextColor2),),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Text('Date Posted: Sept 03, 2024',style: TextStyle(fontSize: 11,
                                  fontWeight: FontWeight.w500,color: appTextColor2),),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: MediaQuery.of(context).size.width/1-110,
                            child: Row(
                              children: [
                                Container(
                                  // height: 30,
                                  decoration: BoxDecoration(
                                      color: appbackgroundColor,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 3),
                                    child: Row(
                                      children: [
                                        Text('5pm - 9pm',style: TextStyle(fontSize: 12,
                                            fontWeight: FontWeight.w400,color: appTextColor2),),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                      color: appbackgroundColor,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 3),
                                    child: Row(
                                      children: [
                                        Text('Part-Time',style: TextStyle(fontSize: 12,
                                            fontWeight: FontWeight.w400,color: appTextColor2),),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text('\$18/per hr',
                                  style: TextStyle(fontWeight: FontWeight.w700,
                                      fontSize: 12),),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: appsecondaryColor,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Center(child: Text('Apply Now',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: appbackgroundColor),)),
                              )
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
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
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
                        children: [
                          Image.asset('assets/temp_images/logo_container.png',height: 50,width: 50,)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/1-110,
                            child: Row(
                              children: [
                                SizedBox(width: 10,),
                                Text('Delivery Driver',style: TextStyle(fontSize: 16,
                                    fontWeight: FontWeight.w600,color: appTextColor),),
                                Spacer(),
                                Image.asset('assets/icons/close.png',height: 20,width: 20,),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Text('BulkBuy',style: TextStyle(fontSize: 14,
                                  fontWeight: FontWeight.w500,color: appTextColor2),),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Text('Date Posted: Sept 03, 2024',style: TextStyle(fontSize: 11,
                                  fontWeight: FontWeight.w500,color: appTextColor2),),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: MediaQuery.of(context).size.width/1-110,
                            child: Row(
                              children: [
                                Container(
                                  // height: 30,
                                  decoration: BoxDecoration(
                                      color: appbackgroundColor,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 3),
                                    child: Row(
                                      children: [
                                        Text('5pm - 9pm',style: TextStyle(fontSize: 12,
                                            fontWeight: FontWeight.w400,color: appTextColor2),),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                      color: appbackgroundColor,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 3),
                                    child: Row(
                                      children: [
                                        Text('Part-Time',style: TextStyle(fontSize: 12,
                                            fontWeight: FontWeight.w400,color: appTextColor2),),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),

                                Text('\$18/per hr',
                                  style: TextStyle(fontWeight: FontWeight.w700,
                                      fontSize: 12),),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: appsecondaryColor,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Center(child: Text('Apply Now',
                                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: appbackgroundColor),)),
                              )
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
      ],
    );
  }

  Widget companyInfoSection() {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return Column(
      children: [
        Row(
          children: [
            Text('Top jobs picks for you',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
          ],
        ),
        SizedBox(height: 10,),
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
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
                        children: [
                          Image.asset('assets/temp_images/compony_logo.png',height: 50,width: 50,)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/1-110,
                            child: Row(
                              children: [
                                SizedBox(width: 10,),
                                Text('House Cleaner',style: TextStyle(fontSize: 16,
                                    fontWeight: FontWeight.w600,color: appTextColor),),
                                Spacer(),
                                Image.asset('assets/icons/close.png',height: 20,width: 20,),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Text('BulkBuy',style: TextStyle(fontSize: 14,
                                  fontWeight: FontWeight.w500,color: appTextColor2),),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Text('Date Posted: Sept 03, 2024',style: TextStyle(fontSize: 11,
                                  fontWeight: FontWeight.w500,color: appTextColor2),),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: MediaQuery.of(context).size.width/1-110,
                            child: Row(
                              children: [
                                Container(
                                  // height: 30,
                                  decoration: BoxDecoration(
                                      color: appbackgroundColor,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 3),
                                    child: Row(
                                      children: [
                                        Text('5pm - 9pm',style: TextStyle(fontSize: 12,
                                            fontWeight: FontWeight.w400,color: appTextColor2),),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                      color: appbackgroundColor,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 3),
                                    child: Row(
                                      children: [
                                        Text('Part-Time',style: TextStyle(fontSize: 12,
                                            fontWeight: FontWeight.w400,color: appTextColor2),),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text('\$18/per hr',
                                  style: TextStyle(fontWeight: FontWeight.w700,
                                      fontSize: 12),),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: appsecondaryColor,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Center(child: Text('Apply Now',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: appbackgroundColor),)),
                              )
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
      ],
    );
  }

  Widget reviewsSection() {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return Column(
      children: [
        Row(
          children: [
            Text('Top jobs picks for you',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
          ],
        ),
        SizedBox(height: 10,),
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
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
                        children: [
                          Image.asset('assets/temp_images/compony_logo.png',height: 50,width: 50,)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/1-110,
                            child: Row(
                              children: [
                                SizedBox(width: 10,),
                                Text('Warehouse Packer',style: TextStyle(fontSize: 16,
                                    fontWeight: FontWeight.w600,color: appTextColor),),
                                Spacer(),
                                Image.asset('assets/icons/close.png',height: 20,width: 20,),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Text('BulkBuy',style: TextStyle(fontSize: 14,
                                  fontWeight: FontWeight.w500,color: appTextColor2),),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Text('Date Posted: Sept 03, 2024',style: TextStyle(fontSize: 11,
                                  fontWeight: FontWeight.w500,color: appTextColor2),),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: MediaQuery.of(context).size.width/1-110,
                            child: Row(
                              children: [
                                Container(
                                  // height: 30,
                                  decoration: BoxDecoration(
                                      color: appbackgroundColor,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 3),
                                    child: Row(
                                      children: [
                                        Text('5pm - 9pm',style: TextStyle(fontSize: 12,
                                            fontWeight: FontWeight.w400,color: appTextColor2),),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                      color: appbackgroundColor,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 3),
                                    child: Row(
                                      children: [
                                        Text('Part-Time',style: TextStyle(fontSize: 12,
                                            fontWeight: FontWeight.w400,color: appTextColor2),),
                                      ],
                                    ),
                                  ),
                                ),
                              SizedBox(width: 10,),
                                Text('\$18/per hr',
                                  style: TextStyle(fontWeight: FontWeight.w700,
                                      fontSize: 12),),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Center(child: Text('Applied 1mo ago',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600,color: appTextColor2),))
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
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
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
                        children: [
                          Image.asset('assets/temp_images/compony_logo.png',height: 50,width: 50,)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/1-110,
                            child: Row(
                              children: [
                                SizedBox(width: 10,),
                                Text('House Cleaner',style: TextStyle(fontSize: 16,
                                    fontWeight: FontWeight.w600,color: appTextColor),),
                                Spacer(),
                                Image.asset('assets/icons/close.png',height: 20,width: 20,),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Text('BulkBuy',style: TextStyle(fontSize: 14,
                                  fontWeight: FontWeight.w500,color: appTextColor2),),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Text('Date Posted: Sept 03, 2024',style: TextStyle(fontSize: 11,
                                  fontWeight: FontWeight.w500,color: appTextColor2),),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: MediaQuery.of(context).size.width/1-110,
                            child: Row(
                              children: [
                                Container(
                                  // height: 30,
                                  decoration: BoxDecoration(
                                      color: appbackgroundColor,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 3),
                                    child: Row(
                                      children: [
                                        Text('5pm - 9pm',style: TextStyle(fontSize: 12,
                                            fontWeight: FontWeight.w400,color: appTextColor2),),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                      color: appbackgroundColor,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 3),
                                    child: Row(
                                      children: [
                                        Text('Part-Time',style: TextStyle(fontSize: 12,
                                            fontWeight: FontWeight.w400,color: appTextColor2),),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text('\$18/per hr',
                                  style: TextStyle(fontWeight: FontWeight.w700,
                                      fontSize: 12),),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Center(child: Text('Applied 1mo ago',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600,color: appTextColor2),))
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
      ],
    );
  }
}
