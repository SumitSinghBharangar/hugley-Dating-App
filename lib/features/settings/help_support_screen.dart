import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/widgets/custom_textfield.dart';

class HelpSupportScreen extends StatefulWidget {
  const HelpSupportScreen({super.key});

  @override
  State<HelpSupportScreen> createState() => _HelpSupportScreenState();
}

class _HelpSupportScreenState extends State<HelpSupportScreen> {
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
            Center(
              child: Text(
                "Help & Support",
                style: TextStyle(
                  color: Color(0xFFD07CBA),
                  fontSize: 27.sp,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Contact Number",
              style: TextStyle(
                fontSize: 19.sp,
                color: Color(0xFFD5A8D8),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomTextFormField(
              hintText: "+919917709350",
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
              height: 20.h,
            ),
            Text(
              "Email Address",
              style: TextStyle(
                fontSize: 19.sp,
                color: Color(0xFFD5A8D8),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomTextFormField(
              hintText: "bharangarsinghsumit@gmail.com",
              prefixIcon: Icon(
                Icons.lock_outline,
                color: Colors.pink.shade300,
              ),
              suffixIcon: Icon(
                Icons.visibility_off_outlined,
                color: Colors.pink.shade300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
