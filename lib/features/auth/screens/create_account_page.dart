import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/dynamic_button.dart';
import 'package:hugley/features/auth/screens/otp_screen.dart';
import 'package:hugley/features/utils/utils.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 350.h,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/img1.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 35.w,
                ),
                child: Column(
                  children: [
                    Spacer(),
                    Text(
                      "Create Account",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27.sp,
                        color: Color(0xFFC765AC),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Signup for free and get started quickly",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 19.sp,
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 22.w,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email Address",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Email Address",
                      hintStyle: TextStyle(
                          color: Colors.grey), // Grey color for placeholder
                      prefixIcon: Icon(
                        Icons.mail_outline, // Person icon
                        color: Color(0xFFEECDE3), // Pink color for the icon
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(
                              0xFFEECDE3), // Pink border when the TextField is not focused
                          width: 2.0,
                        ),
                        borderRadius:
                            BorderRadius.circular(8.0), // Rounded corners
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(
                              0xFFEECDE3), // Pink border when the TextField is focused
                          width: 2.0,
                        ),
                        borderRadius:
                            BorderRadius.circular(8.0), // Rounded corners
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "Telephone Number",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Phone no",
                      hintStyle: TextStyle(
                          color: Colors.grey), // Grey color for placeholder
                      prefixIcon: Icon(
                        Icons.call_outlined, // Person icon
                        color: Color(0xFFEECDE3), // Pink color for the icon
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(
                              0xFFEECDE3), // Pink border when the TextField is not focused
                          width: 2.0,
                        ),
                        borderRadius:
                            BorderRadius.circular(8.0), // Rounded corners
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(
                              0xFFEECDE3), // Pink border when the TextField is focused
                          width: 2.0,
                        ),
                        borderRadius:
                            BorderRadius.circular(8.0), // Rounded corners
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "UserName",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "UserName",
                      hintStyle: TextStyle(
                          color: Colors.grey), // Grey color for placeholder
                      prefixIcon: Icon(
                        Icons.person, // Person icon
                        color: Color(0xFFEECDE3), // Pink color for the icon
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(
                              0xFFEECDE3), // Pink border when the TextField is not focused
                          width: 2.0,
                        ),
                        borderRadius:
                            BorderRadius.circular(8.0), // Rounded corners
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(
                              0xFFEECDE3), // Pink border when the TextField is focused
                          width: 2.0,
                        ),
                        borderRadius:
                            BorderRadius.circular(8.0), // Rounded corners
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "Create Password",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Create Password",
                      hintStyle: TextStyle(
                          color: Colors.grey), // Grey color for placeholder
                      prefixIcon: Icon(
                        Icons.lock_outline, // Person icon
                        color: Color(0xFFEECDE3), // Pink color for the icon
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(
                              0xFFEECDE3), // Pink border when the TextField is not focused
                          width: 2.0,
                        ),
                        borderRadius:
                            BorderRadius.circular(8.0), // Rounded corners
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(
                              0xFFEECDE3), // Pink border when the TextField is focused
                          width: 2.0,
                        ),
                        borderRadius:
                            BorderRadius.circular(8.0), // Rounded corners
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Center(
                    child: SizedBox(
                      width: 280.w,
                      height: 60.h,
                      child: DynamicButton.fromText(
                        text: "Sign up",
                        onPressed: () {
                          Utils.go(
                            context: context,
                            screen: OtpScreen(),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.pink.shade200,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/icons/google.png",
                        height: 40.h,
                        width: 40.w,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "assets/icons/facebook.png",
                        height: 40.h,
                        width: 40.w,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "assets/icons/apple.png",
                        height: 40.h,
                        width: 40.w,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).padding.bottom + 20.h,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
