import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/dynamic_button.dart';
import 'package:pinput/pinput.dart';

class CaretakerVerificationScreen extends StatefulWidget {
  const CaretakerVerificationScreen({super.key});

  @override
  State<CaretakerVerificationScreen> createState() =>
      _CaretakerVerificationScreenState();
}

class _CaretakerVerificationScreenState
    extends State<CaretakerVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 70, // Width of each box
      height: 60, // Height of each box
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFD782B7), // Pink border color
          width: 2, // Border thickness
        ),
        borderRadius: BorderRadius.circular(
            8), // Small border radius for slightly rounded corners
      ),
      textStyle: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Color(0xFFD782B7), // Pink text color
      ),
    );
    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        border: Border.all(
          color: Color(0xFFD782B7), // Darker pink border when focused
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
          horizontal: 22.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.h,
            ),
            Text(
              "Verify it's you",
              style: TextStyle(
                color: Color(0xFFD07CBA),
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Enter the 4-digit verification code send via sms in order verify yourself",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(
              height: 40.h,
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
            SizedBox(
              height: 40.h,
            ),
            Center(
              child: Text(
                "Resend in 5:30",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Center(
              child: SizedBox(
                width: 300.w,
                child: DynamicButton.fromText(
                  text: "Verify",
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
