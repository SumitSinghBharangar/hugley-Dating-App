import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/dynamic_button.dart';
import 'package:hugley/common/buttons/scale_button.dart';

class ChangeVisivilityScreen extends StatefulWidget {
  const ChangeVisivilityScreen({super.key});

  @override
  State<ChangeVisivilityScreen> createState() => _ChangeVisivilityScreenState();
}

class _ChangeVisivilityScreenState extends State<ChangeVisivilityScreen> {
  bool isPublic = true;
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
          horizontal: 20.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Change Visibility\nStatus",
              style: TextStyle(
                color: Color(0xFFD07CBA),
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Toggle your visibility status for your account in order to control how users see your account",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 17.sp,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Center(
              child: ScaleButton(
                onTap: !isPublic
                    ? null
                    : () {
                        setState(() {
                          isPublic = false;
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
                        !isPublic
                            ? Color(0xFF9C27B0)
                            : Colors.transparent, // Purple
                        !isPublic
                            ? Color(0xFFE91E63)
                            : Colors.transparent, // Pink color
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Public",
                      style: TextStyle(
                        color: !isPublic ? Colors.white : Colors.grey,
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
                onTap: isPublic
                    ? null
                    : () {
                        setState(() {
                          isPublic = true;
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
                        isPublic
                            ? Color(0xFF9C27B0)
                            : Colors.transparent, // Purple
                        isPublic
                            ? Color(0xFFE91E63)
                            : Colors.transparent, // Pink color
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  duration: const Duration(milliseconds: 400),
                  child: Center(
                    child: Text(
                      "Hide",
                      style: TextStyle(
                        color: isPublic ? Colors.white : Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 21.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Center(
              child: SizedBox(
                height: 60.h,
                width: 300.w,
                child: DynamicButton.fromText(
                  text: "Confirm",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).padding.bottom + 60.h,
            )
          ],
        ),
      ),
    );
  }
}
