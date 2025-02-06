import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/dynamic_button.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400.h,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/img1.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: Column(
                children: [
                  Spacer(),
                  Text(
                    "Create Account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 27.sp,
                      color: Colors.yellow,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Signup for free and get started quickly",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Email Address",
            style: TextStyle(
              fontSize: 19.sp,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Email Address",
              hintStyle:
                  TextStyle(color: Colors.grey), // Grey color for placeholder
              suffixIcon: Icon(
                Icons.person, // Person icon
                color: Colors.pink, // Pink color for the icon
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors
                      .pink, // Pink border when the TextField is not focused
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0), // Rounded corners
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color:
                      Colors.pink, // Pink border when the TextField is focused
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0), // Rounded corners
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Telephone Number",
            style: TextStyle(
              fontSize: 19.sp,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Phone no",
              hintStyle:
                  TextStyle(color: Colors.grey), // Grey color for placeholder
              suffixIcon: Icon(
                Icons.person, // Person icon
                color: Colors.pink, // Pink color for the icon
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors
                      .pink, // Pink border when the TextField is not focused
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0), // Rounded corners
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color:
                      Colors.pink, // Pink border when the TextField is focused
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0), // Rounded corners
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "UserName",
            style: TextStyle(
              fontSize: 19.sp,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "UserName",
              hintStyle:
                  TextStyle(color: Colors.grey), // Grey color for placeholder
              suffixIcon: Icon(
                Icons.person, // Person icon
                color: Colors.pink, // Pink color for the icon
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors
                      .pink, // Pink border when the TextField is not focused
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0), // Rounded corners
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color:
                      Colors.pink, // Pink border when the TextField is focused
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0), // Rounded corners
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Create Password",
            style: TextStyle(
              fontSize: 19.sp,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Create Password",
              hintStyle:
                  TextStyle(color: Colors.grey), // Grey color for placeholder
              suffixIcon: Icon(
                Icons.person, // Person icon
                color: Colors.pink, // Pink color for the icon
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors
                      .pink, // Pink border when the TextField is not focused
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0), // Rounded corners
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color:
                      Colors.pink, // Pink border when the TextField is focused
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0), // Rounded corners
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: SizedBox(
              width: 280.w,
              height: 80.h,
              child: DynamicButton.fromText(
                text: "Sign up",
                onPressed: () {},
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Divider(
            thickness: 1,
            color: Colors.pink,
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/icons/google.png",
                height: 50.h,
                width: 50.w,
                fit: BoxFit.cover,
              ),
              Image.asset(
                "assets/icons/google.png",
                height: 50.h,
                width: 50.w,
                fit: BoxFit.cover,
              ),
              Image.asset(
                "assets/icons/google.png",
                height: 50.h,
                width: 50.w,
                fit: BoxFit.cover,
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          )
        ],
      ),
    );
  }
}
