import 'package:flutter/material.dart';
import 'package:job_networking_app/details_screens/apply_now_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../constants/color_constants.dart';

class JobDetailsScreen extends StatefulWidget {
  const JobDetailsScreen({super.key});

  @override
  State<JobDetailsScreen> createState() => _JobDetailsScreenState();
}

class _JobDetailsScreenState extends State<JobDetailsScreen> with SingleTickerProviderStateMixin {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late SharedPreferences prefs;
  late TabController _tabController;
  String selected = 'Job Description';


  @override
  void initState() {
    super.initState();
    setSelectedTab('Job Description');
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: appPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.arrow_back_outlined),
                          Spacer(),
                          Image.asset('assets/icons/bookmark.png', height: 20, width: 20),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 30),
                      Image.asset('assets/temp_images/logo_container.png', height: 80, width: 80),
                      SizedBox(height: 10),
                      Text(
                        'BulkBuy',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500, color: appTextColor2),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Warehouse Packer',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600, color: appTextColor),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Date Posted: Sept 03, 2024',
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w500, color: appTextColor2),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          _buildInfoContainer(Icons.contacts_outlined, 'Sept 12, 2024'),
                          Spacer(),
                          _buildInfoContainer(Icons.access_time_rounded, '5 PM - 9 PM'),
                          Spacer(),
                          _buildInfoContainer(null, 'Part-Time'),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '\$20/per hr',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16, color: appTextColor2),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Geneva, Switzerland',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16, color: appTextColor2),
                          ),
                        ],
                      ),
                    ],
                  ),
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
                            selected = 'Job Description';
                          });
                          setSelectedTab('Job Description');
                        },
                        child: Text(
                          'Job Description',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: selected == 'Job Description'
                                ? appTextColor
                                : appTextColor2,
                          ),
                        ),
                      ),
                      Container(
                        height: 2,
                        width: MediaQuery.of(context).size.width / 3 -
                            20,
                        color: selected == 'Job Description'
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
                            selected = 'Company info';
                          });
                          setSelectedTab('Company info');
                        },
                        child: Text(
                          'Company info',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: selected == 'Company info'
                                ? appTextColor
                                : appTextColor2,
                          ),
                        ),
                      ),
                      Container(
                        height: 2,
                        width: MediaQuery.of(context).size.width / 3 -
                            20,
                        color: selected == 'Company info'
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
                            selected = 'Reviews';
                          });
                          setSelectedTab('Reviews');
                        },
                        child: Text(
                          'Reviews',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: selected == 'Reviews'
                                ? appTextColor
                                : appTextColor2,
                          ),
                        ),
                      ),
                      Container(
                        height: 2,
                        width: MediaQuery.of(context).size.width / 3 -
                            20,
                        color: selected == 'Reviews'
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
                index: selected == 'Job Description'
                    ? 0
                    : selected == 'Company info'
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
      ),
    );
  }

  Widget _buildInfoContainer(IconData? icon, String text) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        color: appbackgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            if (icon != null) Icon(icon, color: appTextColor2),
            SizedBox(width: 4),
            Text(
              text,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: appTextColor2),
            ),
          ],
        ),
      ),
    );
  }

  Widget jobDescriptionSection() {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Text('Job Description',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: appTextColor),),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text('We are looking for a dedicated and hardworking Warehouse Packer to join our logistics team. As a Warehouse Packer, you will be responsible for efficiently packing and preparing products for shipment, ensuring that all orders are accurately fulfilled and ready for timely delivery.',
                  style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: appTextColor2),),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                    height: 30,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: appOTPBg
                ),
                child: Center(
                  child: Text('Read More',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: appTextColor3),),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text('Job Role',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: appTextColor),),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Icon(Icons.circle_sharp,size: 8,color: appTextColor2,),
              ),
              SizedBox(width: 10,),
              Expanded(
                child:Text("Pack and prepare orders for shipment according to customer specifications.",
                style: TextStyle(color: appTextColor2,fontWeight: FontWeight.w500,fontSize: 12),)
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Icon(Icons.circle_sharp,size: 8,color: appTextColor2,),
              ),
              SizedBox(width: 10,),
              Expanded(
                  child:Text("Inspect products for defects or damages before packing.",
                    style: TextStyle(color: appTextColor2,fontWeight: FontWeight.w500,fontSize: 12),)
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Icon(Icons.circle_sharp,size: 8,color: appTextColor2,),
              ),
              SizedBox(width: 10,),
              Expanded(
                  child:Text("Ensure that all packages are properly labeled and meet shipping standards",
                    style: TextStyle(color: appTextColor2,fontWeight: FontWeight.w500,fontSize: 12),)
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Icon(Icons.circle_sharp,size: 8,color: appTextColor2,),
              ),
              SizedBox(width: 10,),
              Expanded(
                  child:Text("Organize and stock inventory in the warehouse as needed.",
                    style: TextStyle(color: appTextColor2,fontWeight: FontWeight.w500,fontSize: 12),)
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Icon(Icons.circle_sharp,size: 8,color: appTextColor2,),
              ),
              SizedBox(width: 10,),
              Expanded(
                  child:Text("Assist with loading and unloading trucks when required",
                    style: TextStyle(color: appTextColor2,fontWeight: FontWeight.w500,fontSize: 12),)
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Icon(Icons.circle_sharp,size: 8,color: appTextColor2,),
              ),
              SizedBox(width: 10,),
              Expanded(
                  child:Text("Maintain a clean and organized workspace to ensure safety and efficiency",
                    style: TextStyle(color: appTextColor2,fontWeight: FontWeight.w500,fontSize: 12),)
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Icon(Icons.circle_sharp,size: 8,color: appTextColor2,),
              ),
              SizedBox(width: 10,),
              Expanded(
                  child:Text("Collaborate with team members and supervisors to meet daily shipping deadlines.",
                    style: TextStyle(color: appTextColor2,fontWeight: FontWeight.w500,fontSize: 12),)
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Icon(Icons.circle_sharp,size: 8,color: appTextColor2,),
              ),
              SizedBox(width: 10,),
              Expanded(
                  child:Text("Perform other related tasks as assigned by the warehouse manager.",
                    style: TextStyle(color: appTextColor2,fontWeight: FontWeight.w500,fontSize: 12),)
              ),
            ],
          ),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          Container(
            width: screenWidth * 0.6,
            height: screenHeight * 0.08,
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ApplyNowScreen(),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(appsecondaryColor),
                elevation: WidgetStateProperty.all(0),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: Text(
                'Apply Now',
                style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget companyInfoSection() {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Text('About Company',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: appTextColor),),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text('Founded in 2010, Bulkbay Staffing Solutions connects workers with flexible employment opportunities across multiple industries. We pride ourselves on offering short-term and daily wage roles in sectors like retail, logistics, and events, helping people earn on their terms',
                  style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: appTextColor2),),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text('Work Environment and Culture',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: appTextColor),),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text('Our company values a safe and supportive work environment for all employees. We ensure proper training and provide a friendly atmosphere where workers can grow their skills while earning daily wages',
                  style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: appTextColor2),),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text('Company Locations/Branches',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: appTextColor),),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text('Bulkbuy Solutions operates in major cities across Switzerland, including Zurich, Geneva, and Basel, with on-site job opportunities available for various projects.',
                  style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: appTextColor2),),
              ),
            ],
          ),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          Container(
            width: screenWidth * 0.6,
            height: screenHeight * 0.08,
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ApplyNowScreen(),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(appsecondaryColor),
                elevation: WidgetStateProperty.all(0),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: Text(
                'Apply Now',
                style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget reviewsSection() {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Text('Reviews (35)',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: appTextColor),),
            ],
          ),
          Row(
            children: [
              Image.asset('assets/temp_images/dummy_user.png',height: 50,width: 50,),
              SizedBox(width: 10,),
              Text('Dale theli',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: appTextColor),)
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text('The onboarding process is straightforward, and they provide clear instructions for each job.',
                  style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: appTextColor2),),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.star,size: 20,color: Colors.amber,),
              Icon(Icons.star,size: 20,color: Colors.amber,),
              Icon(Icons.star,size: 20,color: Colors.amber,),
              Icon(Icons.star,size: 20,color: Colors.amber,),
              Icon(Icons.star,size: 20,color: Colors.amber,),
              Text('4.5',style: TextStyle(color: appTextColor2,fontWeight: FontWeight.w600,fontSize: 12),)
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Image.asset('assets/temp_images/dummy_user.png',height: 50,width: 50,),
              SizedBox(width: 10,),
              Text('Joe Natoli',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: appTextColor),)
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text('It was a great experience. The team was responsive, and I always got paid on time.',
                  style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: appTextColor2),),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.star,size: 20,color: Colors.amber,),
              Icon(Icons.star,size: 20,color: Colors.amber,),
              Icon(Icons.star,size: 20,color: Colors.amber,),
              Icon(Icons.star,size: 20,color: Colors.amber,),
              Icon(Icons.star,size: 20,color: Colors.amber,),
              Text('4.5',style: TextStyle(color: appTextColor2,fontWeight: FontWeight.w600,fontSize: 12),)
            ],
          ),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          Container(
            width: screenWidth * 0.6,
            height: screenHeight * 0.08,
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ApplyNowScreen(),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(appsecondaryColor),
                elevation: WidgetStateProperty.all(0),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: Text(
                'Apply Now',
                style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

}
