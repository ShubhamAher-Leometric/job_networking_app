import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    double titleFontSize = screenWidth * 0.08;
    return Scaffold(
      backgroundColor: appbackgroundColor,
      appBar: AppBar(
        backgroundColor: appbackgroundColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child: Image.asset('assets/temp_images/Map_Location.png',fit: BoxFit.cover,)),
          Container(
            height: MediaQuery.of(context).size.height/2-120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
              border: Border ( top: BorderSide(
                color: Colors.grey.withOpacity(0.3),
                width: 2.0,
                ),
                left: BorderSide(
                color: Colors.grey.withOpacity(0.3),
                width: 2.0,
                ),
                right: BorderSide(
                color: Colors.grey.withOpacity(0.3),
                width: 2.0,
                ),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Text(
                      'Jobs near your location',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  height: 170,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1 - 40,
                          decoration: BoxDecoration(
                              color: appPrimaryColor,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Warehouse Packer',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: appbackgroundColor,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          children: [
                                            Icon(Icons.contacts_outlined,
                                                color: appTextColor2),
                                            Text(
                                              'Sept 12, 2024',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: appTextColor2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: appbackgroundColor,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          children: [
                                            Icon(Icons.access_time_rounded,
                                                color: appTextColor2),
                                            Text(
                                              '5 PM - 9 PM',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: appTextColor2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: appbackgroundColor,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Part-Time',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: appTextColor2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
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
                                        Row(
                                          children: [
                                            SizedBox(width: 10,),
                                            Text('Warehouse Packer',
                                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: appTextColor),),
                                          ],
                                        ),
                                        Container(
                                          width: MediaQuery.of(context).size.width/1-110,
                                          child: Row(
                                            children: [
                                              SizedBox(width: 10,),
                                              Text('BulkBuy',style: TextStyle(fontSize: 14,
                                                  fontWeight: FontWeight.w500,color: appTextColor2),),
                                              Spacer(),
                                              Icon(Icons.arrow_forward_outlined,size: 20,),
                                            ],
                                          ),
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
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1 - 40,
                          decoration: BoxDecoration(
                              color: appPrimaryColor,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Warehouse Packer',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: appbackgroundColor,
                                          borderRadius:
                                          BorderRadius.circular(15)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          children: [
                                            Icon(Icons.contacts_outlined,
                                                color: appTextColor2),
                                            Text(
                                              'Sept 12, 2024',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: appTextColor2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: appbackgroundColor,
                                          borderRadius:
                                          BorderRadius.circular(15)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          children: [
                                            Icon(Icons.access_time_rounded,
                                                color: appTextColor2),
                                            Text(
                                              '5 PM - 9 PM',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: appTextColor2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: appbackgroundColor,
                                          borderRadius:
                                          BorderRadius.circular(15)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Part-Time',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: appTextColor2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
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
                                        Row(
                                          children: [
                                            SizedBox(width: 10,),
                                            Text('Warehouse Packer',
                                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: appTextColor),),
                                          ],
                                        ),
                                        Container(
                                          width: MediaQuery.of(context).size.width/1-110,
                                          child: Row(
                                            children: [
                                              SizedBox(width: 10,),
                                              Text('BulkBuy',style: TextStyle(fontSize: 14,
                                                  fontWeight: FontWeight.w500,color: appTextColor2),),
                                              Spacer(),
                                              Icon(Icons.arrow_forward_outlined,size: 20,),
                                            ],
                                          ),
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
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1 - 40,
                          decoration: BoxDecoration(
                              color: appPrimaryColor,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Warehouse Packer',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: appbackgroundColor,
                                          borderRadius:
                                          BorderRadius.circular(15)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          children: [
                                            Icon(Icons.contacts_outlined,
                                                color: appTextColor2),
                                            Text(
                                              'Sept 12, 2024',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: appTextColor2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: appbackgroundColor,
                                          borderRadius:
                                          BorderRadius.circular(15)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          children: [
                                            Icon(Icons.access_time_rounded,
                                                color: appTextColor2),
                                            Text(
                                              '5 PM - 9 PM',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: appTextColor2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: appbackgroundColor,
                                          borderRadius:
                                          BorderRadius.circular(15)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Part-Time',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: appTextColor2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
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
                                        Row(
                                          children: [
                                            SizedBox(width: 10,),
                                            Text('Warehouse Packer',
                                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: appTextColor),),
                                          ],
                                        ),
                                        Container(
                                          width: MediaQuery.of(context).size.width/1-110,
                                          child: Row(
                                            children: [
                                              SizedBox(width: 10,),
                                              Text('BulkBuy',style: TextStyle(fontSize: 14,
                                                  fontWeight: FontWeight.w500,color: appTextColor2),),
                                              Spacer(),
                                              Icon(Icons.arrow_forward_outlined,size: 20,),
                                            ],
                                          ),
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
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1 - 40,
                          decoration: BoxDecoration(
                              color: appPrimaryColor,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Warehouse Packer',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: appbackgroundColor,
                                          borderRadius:
                                          BorderRadius.circular(15)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          children: [
                                            Icon(Icons.contacts_outlined,
                                                color: appTextColor2),
                                            Text(
                                              'Sept 12, 2024',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: appTextColor2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: appbackgroundColor,
                                          borderRadius:
                                          BorderRadius.circular(15)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          children: [
                                            Icon(Icons.access_time_rounded,
                                                color: appTextColor2),
                                            Text(
                                              '5 PM - 9 PM',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: appTextColor2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: appbackgroundColor,
                                          borderRadius:
                                          BorderRadius.circular(15)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Part-Time',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: appTextColor2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
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
                                        Row(
                                          children: [
                                            SizedBox(width: 10,),
                                            Text('Warehouse Packer',
                                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: appTextColor),),
                                          ],
                                        ),
                                        Container(
                                          width: MediaQuery.of(context).size.width/1-110,
                                          child: Row(
                                            children: [
                                              SizedBox(width: 10,),
                                              Text('BulkBuy',style: TextStyle(fontSize: 14,
                                                  fontWeight: FontWeight.w500,color: appTextColor2),),
                                              Spacer(),
                                              Icon(Icons.arrow_forward_outlined,size: 20,),
                                            ],
                                          ),
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
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1 - 40,
                          decoration: BoxDecoration(
                              color: appPrimaryColor,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Warehouse Packer',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: appbackgroundColor,
                                          borderRadius:
                                          BorderRadius.circular(15)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          children: [
                                            Icon(Icons.contacts_outlined,
                                                color: appTextColor2),
                                            Text(
                                              'Sept 12, 2024',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: appTextColor2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: appbackgroundColor,
                                          borderRadius:
                                          BorderRadius.circular(15)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          children: [
                                            Icon(Icons.access_time_rounded,
                                                color: appTextColor2),
                                            Text(
                                              '5 PM - 9 PM',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: appTextColor2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: appbackgroundColor,
                                          borderRadius:
                                          BorderRadius.circular(15)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Part-Time',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: appTextColor2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
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
                                        Row(
                                          children: [
                                            SizedBox(width: 10,),
                                            Text('Warehouse Packer',
                                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: appTextColor),),
                                          ],
                                        ),
                                        Container(
                                          width: MediaQuery.of(context).size.width/1-110,
                                          child: Row(
                                            children: [
                                              SizedBox(width: 10,),
                                              Text('BulkBuy',style: TextStyle(fontSize: 14,
                                                  fontWeight: FontWeight.w500,color: appTextColor2),),
                                              Spacer(),
                                              Icon(Icons.arrow_forward_outlined,size: 20,),
                                            ],
                                          ),
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
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
