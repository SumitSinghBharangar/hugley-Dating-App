import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/dynamic_button.dart';
import 'package:hugley/common/widgets/custom_textfield.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 28,
            color: Colors.pink,
          ),
        ),
        title: Text(
          "Hugley",
          style: TextStyle(
            fontSize: 30.sp,
            color: Color(0xFFF85D82),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              size: 28,
              color: Color(0xFFF85D82),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 22.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Change Password",
              style: TextStyle(
                color: Color(0xFFD07CBA),
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Enter a new password below to change your password",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Previous Password",
              style: TextStyle(
                fontSize: 19.sp,
                color: Color(0xFFD5A8D8),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomTextFormField(
              hintText: "----------------",
              prefixIcon: Icon(
                Icons.lock_outline,
                color: Colors.pink.shade300,
              ),
              suffixIcon: Icon(
                Icons.visibility_off_outlined,
                color: Colors.pink.shade300,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "New Password",
              style: TextStyle(
                fontSize: 19.sp,
                color: Color(0xFFD5A8D8),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomTextFormField(
              hintText: "----------------",
              prefixIcon: Icon(
                Icons.lock_outline,
                color: Colors.pink.shade300,
              ),
              suffixIcon: Icon(
                Icons.visibility_off_outlined,
                color: Colors.pink.shade300,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Confirm Password",
              style: TextStyle(
                fontSize: 19.sp,
                color: Color(0xFFD5A8D8),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomTextFormField(
              hintText: "----------------",
              prefixIcon: Icon(
                Icons.lock_outline,
                color: Colors.pink.shade300,
              ),
              suffixIcon: Icon(
                Icons.visibility_off_outlined,
                color: Colors.pink.shade300,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Center(
              child: SizedBox(
                width: 300.w,
                height: 60.h,
                child: DynamicButton.fromText(
                    text: "Change Password",
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
