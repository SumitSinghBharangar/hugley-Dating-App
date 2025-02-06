import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/dynamic_button.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "assets/images/img1.png",
            height: 400.h,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 40.h,
          ),
          Text(
            "Create Account",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 27.sp,
              color: Colors.yellow,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "Signup for free and get started quickly",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20.sp,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 60.h,
          ),
          Center(
            child: SizedBox(
              height: 80.h,
              width: 300.w,
              child: DynamicButton.fromText(text: "User", onPressed: () {}),
            ),
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
                  "Caretaker",
                  style: TextStyle(
                    fontSize: 21.sp,
                    color: Colors.purple.shade100,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Text(
            "Privacy Policy",
            style: TextStyle(fontSize: 21.sp, color: Colors.pink),
          )
        ],
      ),
    );
  }
}
