import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/scale_button.dart';
import 'package:hugley/features/profile_section/select_country_screen.dart';
import 'package:hugley/features/utils/utils.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 70, // Width of each box
      height: 60, // Height of each box
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.pink, // Pink border color
          width: 2, // Border thickness
        ),
        borderRadius: BorderRadius.circular(
            8), // Small border radius for slightly rounded corners
      ),
      textStyle: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.pink, // Pink text color
      ),
    );
    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        border: Border.all(
          color: Colors.pink.shade700, // Darker pink border when focused
          width: 3, // Thicker border when focused
        ),
      ),
    );
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
          horizontal: 40.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60.h,
            ),
            Text(
              "Enter the Code",
              style: TextStyle(
                fontSize: 29.sp,
                color: Colors.purple,
              ),
            ),
            Text(
              "we send the code to +9917709350 to signup",
              style: TextStyle(
                fontSize: 18.sp,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Pinput(
              length: 4, // Number of PIN boxes
              defaultPinTheme: defaultPinTheme, // Default style for each box
              focusedPinTheme: focusedPinTheme, // Style when a box is focused
              showCursor: true, // Hide the cursor
              onChanged: (value) {
                print('Changed: $value'); // Callback when the value changes
              },
              onCompleted: (pin) {
                print('Completed: $pin'); // Callback when the PIN is completed
              },
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ScaleButton(
                  onTap: () {
                    Utils.go(context: context, screen: SelectCountryScreen());
                  },
                  child: Container(
                    height: 60.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.pink),
                    child: Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).padding.bottom + 20,
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).padding.bottom + 20.h,
            )
          ],
        ),
      ),
    );
  }
}
