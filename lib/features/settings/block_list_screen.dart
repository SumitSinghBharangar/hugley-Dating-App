import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/dynamic_button.dart';

class BlockListScreen extends StatefulWidget {
  const BlockListScreen({super.key});

  @override
  State<BlockListScreen> createState() => _BlockListScreenState();
}

class _BlockListScreenState extends State<BlockListScreen> {
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
          horizontal: 10.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 23,
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-photo/young-caucasian-brunette-rocks-beach-with-closed-eyes_181624-37395.jpg?semt=ais_hybrid'),
              ),
              title: Text(
                "Brule fernld",
                style: TextStyle(fontSize: 20.sp),
              ),
              trailing: SizedBox(
                height: 48.h,
                width: 100.w,
                child: DynamicButton.fromText(
                  text: "Unblock",
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 23,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1565396488538-0cdbd7c7ef18?q=80&w=1234&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
              ),
              title: Text(
                "Brule fernld",
                style: TextStyle(fontSize: 20.sp),
              ),
              trailing: SizedBox(
                height: 48.h,
                width: 100.w,
                child: DynamicButton.fromText(
                  text: "Unblock",
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 23,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1567016920845-db9328b8e7bf?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHNleHklMjBnaXJsfGVufDB8fDB8fHww'),
              ),
              title: Text(
                "Brule fernld",
                style: TextStyle(fontSize: 20.sp),
              ),
              trailing: SizedBox(
                height: 48.h,
                width: 100.w,
                child: DynamicButton.fromText(
                  text: "Unblock",
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 23,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/flagged/photo-1563807556028-4ee2b3253dbf?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHNleHklMjBnaXJsfGVufDB8fDB8fHww'),
              ),
              title: Text(
                "Brule fernld",
                style: TextStyle(fontSize: 20.sp),
              ),
              trailing: SizedBox(
                height: 48.h,
                width: 100.w,
                child: DynamicButton.fromText(
                  text: "Unblock",
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 23,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1595831004082-7d028af1387b?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjZ8fHNleHklMjBnaXJsfGVufDB8fDB8fHww'),
              ),
              title: Text(
                "Brule fernld",
                style: TextStyle(fontSize: 20.sp),
              ),
              trailing: SizedBox(
                height: 48.h,
                width: 100.w,
                child: DynamicButton.fromText(
                  text: "Unblock",
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 23,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1657306607237-3eab445c4a84?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDh8fHNleHklMjBnaXJsfGVufDB8fDB8fHww'),
              ),
              title: Text(
                "Brule fernld",
                style: TextStyle(fontSize: 20.sp),
              ),
              trailing: SizedBox(
                height: 48.h,
                width: 100.w,
                child: DynamicButton.fromText(
                  text: "Unblock",
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 23,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1617380518232-9c3e95a118d5?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTR8fHNleHklMjBnaXJsfGVufDB8fDB8fHww'),
              ),
              title: Text(
                "Brule fernld",
                style: TextStyle(fontSize: 20.sp),
              ),
              trailing: SizedBox(
                height: 48.h,
                width: 100.w,
                child: DynamicButton.fromText(
                  text: "Unblock",
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
