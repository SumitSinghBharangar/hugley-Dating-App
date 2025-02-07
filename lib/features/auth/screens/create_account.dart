import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/dynamic_button.dart';
import 'package:hugley/common/buttons/scale_button.dart';
import 'package:hugley/features/auth/screens/create_account_page.dart';
import 'package:hugley/features/utils/utils.dart';

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
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 40.h,
          ),
          Text(
            "Create Account",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35.sp,
              color: Color(0xFFD57FB9),
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 22.w,
            ),
            child: Text(
              "Signup for free and get started quickly",
              style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 22.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Center(
            child: SizedBox(
              height: 80.h,
              width: 300.w,
              child: DynamicButton.fromText(
                text: "User",
                onPressed: () {
                  Utils.go(
                    context: context,
                    screen: CreateAccountPage(),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Center(
            child: ScaleButton(
              onTap: () {
                Utils.go(
                  context: context,
                  screen: CreateAccountPage(),
                );
              },
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
          ),
          Spacer(),
          Text(
            "Privacy Policy",
            style: TextStyle(fontSize: 21.sp, color: Colors.purple.shade100),
          ),
          SizedBox(
            height: MediaQuery.of(context).padding.bottom + 10,
          ),
        ],
      ),
    );
  }
}
