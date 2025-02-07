import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/scale_button.dart';

class BirthdaySelectScreen extends StatefulWidget {
  const BirthdaySelectScreen({super.key});

  @override
  State<BirthdaySelectScreen> createState() => _BirthdaySelectScreenState();
}

class _BirthdaySelectScreenState extends State<BirthdaySelectScreen> {
  final TextEditingController dayController = TextEditingController();
  final TextEditingController monthController = TextEditingController();
  final TextEditingController yearController = TextEditingController();

  @override
  void dispose() {
    dayController.dispose();
    monthController.dispose();
    yearController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/img1.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 10.h,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  ScaleButton(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 20.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Icon(Icons.arrow_back_ios_new),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
            ),
            child: Column(
              children: [
                Text(
                  "when's your\nbirthday",
                  style: TextStyle(
                    fontSize: 27.sp,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "we only show age to potential matches ,not to your birthday",
                  style: TextStyle(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
