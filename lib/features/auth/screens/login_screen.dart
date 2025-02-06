import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/dynamic_button.dart';
import 'package:hugley/common/buttons/scale_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isUser = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "assets/images/img1.png",
            height: 400.h,
            fit: BoxFit.cover,
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: Column(
                children: [
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21.sp,
                      color: Colors.yellow,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Please Log in",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ScaleButton(
                        onTap: !isUser
                            ? null
                            : () {
                                setState(() {
                                  isUser = false;
                                });
                              },
                        child: AnimatedContainer(
                          width: 150.w,
                          duration: const Duration(milliseconds: 400),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 8),
                          decoration: BoxDecoration(
                            color: isUser ? null : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "Upcomming",
                              style: TextStyle(
                                color: isUser ? Colors.white : Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 11.w),
                      ScaleButton(
                        onTap: isUser
                            ? null
                            : () {
                                setState(() {
                                  isUser = true;
                                });
                              },
                        child: AnimatedContainer(
                          width: 150.w,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 8.h),
                          decoration: BoxDecoration(
                            color: !isUser ? null : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          duration: const Duration(milliseconds: 400),
                          child: Center(
                            child: Text(
                              "Previous",
                              style: TextStyle(
                                color: !isUser ? Colors.white : Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Username",
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
                      hintText: "Username",
                      hintStyle: TextStyle(
                          color: Colors.grey), // Grey color for placeholder
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
                        borderRadius:
                            BorderRadius.circular(8.0), // Rounded corners
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors
                              .pink, // Pink border when the TextField is focused
                          width: 2.0,
                        ),
                        borderRadius:
                            BorderRadius.circular(8.0), // Rounded corners
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "Password",
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
                      hintText: ".....",
                      hintStyle: TextStyle(
                          color: Colors.grey), // Grey color for placeholder
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
                        borderRadius:
                            BorderRadius.circular(8.0), // Rounded corners
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors
                              .pink, // Pink border when the TextField is focused
                          width: 2.0,
                        ),
                        borderRadius:
                            BorderRadius.circular(8.0), // Rounded corners
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Forgot Password",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.pink,
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
                        text: "Log in",
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Divider(
                    height: 1.h,
                    thickness: 1.h,
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
            ),
          )
        ],
      ),
    );
  }
}
