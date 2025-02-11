import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddFaceIdScreen extends StatefulWidget {
  const AddFaceIdScreen({super.key});

  @override
  State<AddFaceIdScreen> createState() => _AddFaceIdScreenState();
}

class _AddFaceIdScreenState extends State<AddFaceIdScreen> {
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
              "Authenticate using ",
              style: TextStyle(
                color: Color(0xFFD07CBA),
                fontSize: 26.sp,
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
          ],
        ),
      ),
    );
  }
}
