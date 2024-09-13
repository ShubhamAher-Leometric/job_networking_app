import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_networking_app/constants/color_constants.dart';
import 'package:job_networking_app/profile_screens/stand_out_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  final PageController pageController = PageController();
  final int numPages = 3;

  // Lists for images and texts
  final List<String> images = [
    'assets/images/Walkthrough 1.png',
    'assets/images/Walkthrough 2.png',
    'assets/images/Walkthrough 3.png',
  ];

  final List<String> texts = [
    'Easily Find What Works for You',
    'Earn Money and experience for every hour you work',
    'Unlock Opportunities Start Your Journey',
  ];
  final List<String> subtexts = [
    'Discover the best part-time jobs tailored for you and Find work that fits your schedule and lifestyle.',
    'Let us guide you through every step of your job search and Simple, clear steps to land the job you want.',
    'Helping you connect with the right employers quickly and Match with jobs that suit your skills and availability.',
  ];

  int currentPage = 0; // Track the current page index

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenHeight = screenSize.height;
    double screenWidth = screenSize.width;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: screenHeight * 0.15),
          buildAutoScrollingContainer(),
        ],
      ),
    );
  }

  Widget buildAutoScrollingContainer() {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 503,
              child: PageView.builder(
                physics: NeverScrollableScrollPhysics(),
                controller: pageController,
                itemCount: numPages,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Image.asset(
                        images[index],
                        fit: BoxFit.cover,
                        height: 250,
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(
                            texts[index],
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            subtexts[index],
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  currentPage > 0
                      ? Container(
                    height: 50,
                    width: 50,
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
                  )
                      : Container(height: 50, width: 50),
                  Spacer(),
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
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      if (currentPage < numPages - 1) {
                        pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StandOutScreen(),
                          ),
                        );
                      }
                    },
                    child: Container(
                      height: 50,
                      width: 50,
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
          ],
        ),
      ],
    );
  }
}
