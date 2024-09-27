import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_networking_app/details_screens/review_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/color_constants.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen>  with SingleTickerProviderStateMixin {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late SharedPreferences prefs;
  late TabController _tabController;
  String selected = 'All';


  @override
  void initState() {
    super.initState();
    setSelectedTab('All');
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
    return Scaffold(
      backgroundColor: appbackgroundColor,
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
                      Icon(Icons.arrow_back_outlined,size: 24,),
                      Spacer(),
                      Text(
                          'Notification',
                          style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16)
                      ),
                      Spacer(),
                      SizedBox(width: 24,),
                      // Image.asset('assets/icons/filter.png',height: 24,width: 24,)
                    ],
                  ),
                ),
              ),
              // SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:appTextColor2.withOpacity(0.1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 'All';
                        });
                        setSelectedTab('All');
                      },
                      child: Container(
                        height: 32,
                        width: MediaQuery.of(context).size.width/3-15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: selected == 'All'
                              ? appsecondaryColor
                              : Colors.transparent,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Center(
                            child: Text(
                              'All',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: selected == 'All'
                                    ? appbackgroundColor
                                    : appTextColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 'Read';
                        });
                        setSelectedTab('Read');
                      },
                      child: Container(
                        height: 32,
                        width: MediaQuery.of(context).size.width/3-15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: selected == 'Read'
                              ? appsecondaryColor
                              : Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            'Read',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: selected == 'Read'
                                  ? appbackgroundColor
                                  : appTextColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 'Unread';
                        });
                        setSelectedTab('Unread');
                      },
                      child: Container(
                        height: 32,
                        width: MediaQuery.of(context).size.width/3-15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: selected == 'Unread'
                              ? appsecondaryColor
                              : Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            'Unread',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: selected == 'Unread'
                                  ? appbackgroundColor
                                  : appTextColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              IndexedStack(
                index: selected == 'All'
                    ? 0
                    : selected == 'Read'
                    ? 1
                    : 2,
                children: [
                  jobDescriptionSection(),
                  companyInfoSection(),
                  UnreadSection(),
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
            Text('Today (5)',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: appTextColor),),
          ],
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReviewScreen(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.circle_rounded,size: 10,),
                          Image.asset('assets/icons/notfication_list.png',height: 50,width: 50,),
                          SizedBox(width: 10,),
                          Expanded(child: Text('A recruiter has recently shown interest in your profile',
                              style:TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: appTextColor)))
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 70,),
                          Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Profile Performance',
                                  style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                              Text('12h ago',
                                  style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                            ],
                          ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 10,),
                        Image.asset('assets/icons/notfication_list.png',height: 50,width: 50,),
                        SizedBox(width: 10,),
                        Expanded(child: Text('A recruiter has recently shown interest in your profile',
                            style:TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: appTextColor)))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 70,),
                        Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Profile Performance',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                            Text('12h ago',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                          ],
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.circle_rounded,size: 10,),
                        Image.asset('assets/icons/notfication_list.png',height: 50,width: 50,),
                        SizedBox(width: 10,),
                        Expanded(child: Text('A recruiter has recently shown interest in your profile',
                            style:TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: appTextColor)))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 70,),
                        Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Profile Performance',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                            Text('12h ago',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                          ],
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Text('Yesterday',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: appTextColor),),
          ],
        ),
        SizedBox(height: 10,),
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.circle_rounded,size: 10,),
                        Image.asset('assets/icons/notfication_list.png',height: 50,width: 50,),
                        SizedBox(width: 10,),
                        Expanded(child: Text('Your job application for Retail Assistant was viewed by ABC Interprises',
                            style:TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: appTextColor)))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 70,),
                        Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Application History',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                            Text('12h ago',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                          ],
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.circle_rounded,size: 10,),
                        Image.asset('assets/icons/notfication_list.png',height: 50,width: 50,),
                        SizedBox(width: 10,),
                        Expanded(child: Text('A recruiter has recently shown interest in your profile',
                            style:TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: appTextColor)))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 70,),
                        Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Profile Performance',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                            Text('12h ago',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                          ],
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
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
            Text('Today (5)',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: appTextColor),),
          ],
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.circle_rounded,size: 10,),
                        Image.asset('assets/icons/notfication_list.png',height: 50,width: 50,),
                        SizedBox(width: 10,),
                        Expanded(child: Text('A recruiter has recently shown interest in your profile',
                            style:TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: appTextColor)))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 70,),
                        Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Profile Performance',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                            Text('12h ago',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                          ],
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 10,),
                        Image.asset('assets/icons/notfication_list.png',height: 50,width: 50,),
                        SizedBox(width: 10,),
                        Expanded(child: Text('A recruiter has recently shown interest in your profile',
                            style:TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: appTextColor)))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 70,),
                        Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Profile Performance',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                            Text('12h ago',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                          ],
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.circle_rounded,size: 10,),
                        Image.asset('assets/icons/notfication_list.png',height: 50,width: 50,),
                        SizedBox(width: 10,),
                        Expanded(child: Text('A recruiter has recently shown interest in your profile',
                            style:TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: appTextColor)))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 70,),
                        Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Profile Performance',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                            Text('12h ago',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                          ],
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Text('Yesterday',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: appTextColor),),
          ],
        ),
        SizedBox(height: 10,),
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.circle_rounded,size: 10,),
                        Image.asset('assets/icons/notfication_list.png',height: 50,width: 50,),
                        SizedBox(width: 10,),
                        Expanded(child: Text('Your job application for Retail Assistant was viewed by ABC Interprises',
                            style:TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: appTextColor)))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 70,),
                        Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Application History',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                            Text('12h ago',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                          ],
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.circle_rounded,size: 10,),
                        Image.asset('assets/icons/notfication_list.png',height: 50,width: 50,),
                        SizedBox(width: 10,),
                        Expanded(child: Text('A recruiter has recently shown interest in your profile',
                            style:TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: appTextColor)))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 70,),
                        Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Profile Performance',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                            Text('12h ago',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                          ],
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget UnreadSection() {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return Column(
      children: [
        Row(
          children: [
            Text('Today (5)',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: appTextColor),),
          ],
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.circle_rounded,size: 10,),
                        Image.asset('assets/icons/notfication_list.png',height: 50,width: 50,),
                        SizedBox(width: 10,),
                        Expanded(child: Text('A recruiter has recently shown interest in your profile',
                            style:TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: appTextColor)))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 70,),
                        Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Profile Performance',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                            Text('12h ago',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                          ],
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 10,),
                        Image.asset('assets/icons/notfication_list.png',height: 50,width: 50,),
                        SizedBox(width: 10,),
                        Expanded(child: Text('A recruiter has recently shown interest in your profile',
                            style:TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: appTextColor)))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 70,),
                        Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Profile Performance',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                            Text('12h ago',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                          ],
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.circle_rounded,size: 10,),
                        Image.asset('assets/icons/notfication_list.png',height: 50,width: 50,),
                        SizedBox(width: 10,),
                        Expanded(child: Text('A recruiter has recently shown interest in your profile',
                            style:TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: appTextColor)))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 70,),
                        Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Profile Performance',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                            Text('12h ago',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                          ],
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Text('Yesterday',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: appTextColor),),
          ],
        ),
        SizedBox(height: 10,),
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.circle_rounded,size: 10,),
                        Image.asset('assets/icons/notfication_list.png',height: 50,width: 50,),
                        SizedBox(width: 10,),
                        Expanded(child: Text('Your job application for Retail Assistant was viewed by ABC Interprises',
                            style:TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: appTextColor)))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 70,),
                        Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Application History',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                            Text('12h ago',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                          ],
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.circle_rounded,size: 10,),
                        Image.asset('assets/icons/notfication_list.png',height: 50,width: 50,),
                        SizedBox(width: 10,),
                        Expanded(child: Text('A recruiter has recently shown interest in your profile',
                            style:TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: appTextColor)))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 70,),
                        Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Profile Performance',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                            Text('12h ago',
                                style:TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: appTextColor2)),
                          ],
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
