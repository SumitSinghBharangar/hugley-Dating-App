import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/dynamic_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/img1.png",
            height: 400.h,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            "Hugley",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 27.sp,
              color: Colors.yellow,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "discover,connect,Galperg",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20.sp,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30.h,
          ),
          Center(
            child: SizedBox(
              width: 300.w,
              height: 80.h,
              child: DynamicButton.fromText(
                text: "Sign in",
                onPressed: () {},
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: Container(
              height: 80.h,
              width: 300.w,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.purple.shade100,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: 21.sp,
                    color: Colors.purple.shade100,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Text(
            "Privacy Policy",
            style: TextStyle(
              fontSize: 19.sp,
              color: Colors.purple.shade100,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
