import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/scale_button.dart';

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
              "Authenticate using Facial Recognition",
              style: TextStyle(
                color: Color(0xFFD07CBA),
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "add your face in order to provide an extra layer of security to the app",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(
              height: 80.h,
            ),
            Center(
              child: ScaleButton(
                onTap: () {},
                child: Container(
                  height: 140.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/button_bg.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/face_icon.png",
                        height: 40.h,
                        width: 40.w,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "FaceId",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
