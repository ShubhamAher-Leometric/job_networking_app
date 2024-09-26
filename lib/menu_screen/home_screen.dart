import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_networking_app/constants/color_constants.dart';
import 'package:job_networking_app/details_screens/job_details_screen.dart';
import 'package:job_networking_app/menu_screen/notification_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                    children: [
            Container(
              // height: MediaQuery.of(context).size.height/3,
              decoration: BoxDecoration(
                color: appOTPBg,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height/30,),
                    Row(
                      children: [
                        Text('Welcome Back! John Lucas',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: appTextColor3),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Let’s Find You a Great Job',   style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: appTextColor3),
                    ),
                      Spacer(),
                      GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NotificationScreen(),
                              ),
                            );
                          },
                          child: Icon(Icons.notifications_none_rounded,size: 26,)),
                        Icon(Icons.filter_alt_outlined,size: 26,),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/30,),
                    Container(
                      decoration: BoxDecoration(
                        color: appbackgroundColor,
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
                                  hintText: 'Search a job, position, Location',
                                  hintStyle: TextStyle(color: appTextfilledColor,
                                      fontSize: 16,fontWeight: FontWeight.w400)
                                ),
                              )),
                          Spacer(),
                          Icon(Icons.mic_none_rounded,size: 26,),
                          SizedBox(width: 10,),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/30,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text('Recommended Jobs',style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.w700,color: appTextColor),),
                  Spacer(),
                  // Text('See all',style: TextStyle(fontSize: 14,
                  //     fontWeight: FontWeight.w600,color: appTextColor),),
                ],
              ),
            ),
            SizedBox(height: 10,),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
            //   child: Container(
            //     height: 100.0,  // Set the height of the ListView
            //     child: ListView.builder(
            //       scrollDirection: Axis.horizontal,  // Enable horizontal scrolling
            //       itemCount: 1,  // Number of items (icons) to display
            //       itemBuilder: (context, index) {
            //         return Row(
            //           children: [
            //             Column(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.all(8.0),
            //                   child: Container(
            //                     width: 60.0,  // Set the width of each icon container
            //                     height: 60.0,  // Set the height to match the parent container
            //                     decoration: BoxDecoration(
            //                       color: appCategoriesBgColor,  // Set the container color
            //                       shape: BoxShape.circle,  // Makes the container circular
            //                     ),
            //                     child: Center(
            //                       child: Image.asset(
            //                     'assets/temp_images/Frame.png',height: 30,
            //                         width: 30,
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //                 Text('Hospitality',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12),)
            //               ],
            //             ),
            //             Column(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.all(8.0),
            //                   child: Container(
            //                     width: 60.0,  // Set the width of each icon container
            //                     height: 60.0,  // Set the height to match the parent container
            //                     decoration: BoxDecoration(
            //                       color: appCategoriesBgColor,  // Set the container color
            //                       shape: BoxShape.circle,  // Makes the container circular
            //                     ),
            //                     child: Center(
            //                       child: Image.asset(
            //                         'assets/temp_images/Frame (1).png',height: 30,
            //                         width: 30,
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //                 Text('Logistics',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12),)
            //               ],
            //             ),
            //             Column(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.all(8.0),
            //                   child: Container(
            //                     width: 60.0,  // Set the width of each icon container
            //                     height: 60.0,  // Set the height to match the parent container
            //                     decoration: BoxDecoration(
            //                       color: appCategoriesBgColor,  // Set the container color
            //                       shape: BoxShape.circle,  // Makes the container circular
            //                     ),
            //                     child: Center(
            //                       child: Image.asset(
            //                         'assets/temp_images/Frame (2).png',height: 30,
            //                         width: 30,
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //                 Text('Cleaning',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12),)
            //               ],
            //             ),
            //             Column(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.all(8.0),
            //                   child: Container(
            //                     width: 60.0,  // Set the width of each icon container
            //                     height: 60.0,  // Set the height to match the parent container
            //                     decoration: BoxDecoration(
            //                       color: appCategoriesBgColor,  // Set the container color
            //                       shape: BoxShape.circle,  // Makes the container circular
            //                     ),
            //                     child: Center(
            //                       child: Image.asset(
            //                         'assets/temp_images/Frame (3).png',height: 30,
            //                         width: 30,
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //                 Text('Security',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12),)
            //               ],
            //             ),
            //             Column(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.all(8.0),
            //                   child: Container(
            //                     width: 60.0,  // Set the width of each icon container
            //                     height: 60.0,  // Set the height to match the parent container
            //                     decoration: BoxDecoration(
            //                       color: appCategoriesBgColor,  // Set the container color
            //                       shape: BoxShape.circle,  // Makes the container circular
            //                     ),
            //                     child: Center(
            //                       child: Image.asset(
            //                         'assets/temp_images/chart.png',height: 30,
            //                         width: 30,
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //                 Text('Chart',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12),)
            //               ],
            //             ),
            //
            //
            //
            //           ],
            //         );
            //       },
            //     ),
            //   ),
            // ),
            // SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: buildAutoScrollingContainer(),
            ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            Text('Popular Jobs',style: TextStyle(fontSize: 16,
                                fontWeight: FontWeight.w700,color: appTextColor),),
                            Spacer(),
                            Text('See all',style: TextStyle(fontSize: 14,
                                fontWeight: FontWeight.w600,color: appTextColor),),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
            ),
            child: Container(
              color: appTextColor2.withOpacity(0.1),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Image.asset('assets/temp_images/Logo Container (1).png',height: 70,width: 70,)
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width/1-140,
                              child: Row(
                                children: [
                                  Text('House Cleaner',style: TextStyle(fontSize: 16,
                                      fontWeight: FontWeight.w600,color: appTextColor),),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Text('Sparkle',style: TextStyle(fontSize: 14,
                                    fontWeight: FontWeight.w500,color: appTextColor2),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Geneva, Switzerland',style: TextStyle(fontSize: 14,
                                    fontWeight: FontWeight.w500,color: appTextColor2),),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Date Posted: Sept 03, 2024',style: TextStyle(fontSize: 11,
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
        ),
                    ],
                  ),
          )),
    );
  }
  Widget buildAutoScrollingContainer() {
    final PageController pageController = PageController();
    int numPages = 3;

    void autoScroll() {
      Future.delayed(Duration(seconds: 3)).then((_) {
        if (pageController.hasClients && numPages > 0) {
          int nextPage = (pageController.page!.toInt() + 1) % numPages;
          pageController
              .animateToPage(
            nextPage,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeIn,
          )
              .then((_) => autoScroll());
        }
      });
    }

    autoScroll();
    return Stack(
      children: [
        Column(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => JobDetailsScreen(),
                  ),
                );
              },
              child: Container(
                height: 250,
                child: PageView.builder(
                  controller: pageController,
                  itemCount: numPages,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                      ),
                      child: Container(
                       color: appPrimaryColor,
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 3,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Image.asset('assets/temp_images/logo_container.png',height: 80,width: 80,)
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                      width: MediaQuery.of(context).size.width/1-140,
                                        child: Row(
                                          children: [
                                            SizedBox(width: 10,),
                                            Text('Warehouse Packer',style: TextStyle(fontSize: 16,
                                                fontWeight: FontWeight.w600,color: appTextColor),),
                                            Spacer(),
                                            Image.asset('assets/icons/bookmark.png',height: 20,width: 20,),
                                            // Icon(Icons.bookmark_outline_outlined,size: 20,)
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
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Container(
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: appbackgroundColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.contacts_outlined,color: appTextColor2),
                                          Text('Sept 12, 2024',style: TextStyle(fontSize: 12,
                                              fontWeight: FontWeight.w400,color: appTextColor2),),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: appbackgroundColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.access_time_rounded,color: appTextColor2),
                                          Text('5 PM - 9 PM',style: TextStyle(fontSize: 12,
                                              fontWeight: FontWeight.w400,color: appTextColor2),),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: appbackgroundColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Row(
                                        children: [
                                          Text('Part-Time',style: TextStyle(fontSize: 12,
                                              fontWeight: FontWeight.w400,color: appTextColor2),),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text('\$20/per hr',
                                    style: TextStyle(fontWeight: FontWeight.w700,
                                      fontSize: 16),),
                                  Spacer(),
                                  Text('Geneva, Switzerland',
                                    style: TextStyle(fontWeight: FontWeight.w700,
                                        fontSize: 16),),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: appsecondaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Center(child: Text('Apply Now',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: appbackgroundColor),)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            SmoothPageIndicator(
              controller: pageController,
              count: numPages,
              effect: WormEffect(
                activeDotColor: appPrimaryColor,
                dotColor: Colors.grey,
                dotHeight: 8,
                dotWidth: 8,
              ),
            ),
          ],
        ),
      ],
    );
  }

}
