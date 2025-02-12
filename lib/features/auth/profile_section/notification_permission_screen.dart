import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/scale_button.dart';

class NotificationPermissionScreen extends StatefulWidget {
  const NotificationPermissionScreen({super.key});

  @override
  State<NotificationPermissionScreen> createState() =>
      _NotificationPermissionScreenState();
}

class _NotificationPermissionScreenState
    extends State<NotificationPermissionScreen> {
  bool isAllow = true;
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
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 22.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "assets/images/img5.png",
                fit: BoxFit.cover,
                height: 150.h,
                width: 150.w,
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Center(
              child: ScaleButton(
                onTap: !isAllow
                    ? null
                    : () {
                        setState(() {
                          isAllow = false;
                        });
                      },
                child: AnimatedContainer(
                  width: 300.w,
                  duration: const Duration(milliseconds: 400),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFD5A8D8), width: 2),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft, // Start from top-left
                      end: Alignment.bottomRight, // End at bottom-right
                      colors: [
                        !isAllow
                            ? Color(0xFF9C27B0)
                            : Colors.transparent, // Purple
                        !isAllow
                            ? Color(0xFFE91E63)
                            : Colors.transparent, // Pink color
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Allow Notification",
                      style: TextStyle(
                        color: !isAllow ? Colors.white : Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 21.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 21.w),
            Center(
              child: ScaleButton(
                onTap: isAllow
                    ? null
                    : () {
                        setState(() {
                          isAllow = true;
                        });
                      },
                child: AnimatedContainer(
                  width: 300.w,
                  padding:
                      EdgeInsets.symmetric(horizontal: 0.w, vertical: 15.h),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFD5A8D8), width: 2),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft, // Start from top-left
                      end: Alignment.bottomRight, // End at bottom-right
                      colors: [
                        isAllow
                            ? Color(0xFF9C27B0)
                            : Colors.transparent, // Purple
                        isAllow
                            ? Color(0xFFE91E63)
                            : Colors.transparent, // Pink color
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  duration: const Duration(milliseconds: 400),
                  child: Center(
                    child: Text(
                      "Not Now",
                      style: TextStyle(
                        color: isAllow ? Colors.white : Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 21.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
