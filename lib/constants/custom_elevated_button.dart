import 'package:flutter/material.dart';
import 'package:job_networking_app/constants/color_constants.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return Container(
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
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
          title,
          style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
