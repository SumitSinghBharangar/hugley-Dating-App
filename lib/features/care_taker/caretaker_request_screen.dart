import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/scale_button.dart';
import 'package:hugley/features/home/root_screen.dart';

import 'package:hugley/features/utils/utils.dart';

class CaretakerRequestScreen extends StatefulWidget {
  const CaretakerRequestScreen({super.key});

  @override
  State<CaretakerRequestScreen> createState() => _CaretakerRequestScreenState();
}

class _CaretakerRequestScreenState extends State<CaretakerRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 20.w,
            ),
            child: ScaleButton(
              onTap: () {
                Utils.go(
                  context: context,
                  screen: RootScreen(),
                );
              },
              child: Text(
                "Skip",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                  color: Colors.grey,
                ),
              ),
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
              "Caretaker Request",
              style: TextStyle(
                color: Color(0xFFD07CBA),
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Accept a caretaker role",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          'https://img.freepik.com/free-photo/young-caucasian-brunette-rocks-beach-with-closed-eyes_181624-37395.jpg?semt=ais_hybrid'),
                    ),
                    title: Text(
                      "Brule Fernald",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("Mother"),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ScaleButton(
                        onTap: () {
                          Utils.go(
                            context: context,
                            screen: RootScreen(),
                          );
                        },
                        child: Container(
                          width: 150.w,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.red,
                          ),
                          child: Text(
                            "Decline",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      ScaleButton(
                        onTap: () {
                          Utils.go(
                            context: context,
                            screen: RootScreen(),
                          );
                        },
                        child: Container(
                          width: 150.w,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.lightGreen,
                          ),
                          child: Text(
                            "Accept",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
