import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/widgets/touch_id_alert.dart';

class AddFingerPrintScreen extends StatefulWidget {
  const AddFingerPrintScreen({super.key});

  @override
  State<AddFingerPrintScreen> createState() => _AddFingerPrintScreenState();
}

class _AddFingerPrintScreenState extends State<AddFingerPrintScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showTouchIDDialog(context);
    });

    super.initState();
  }

  void showTouchIDDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevents closing dialog by tapping outside
      builder: (context) => TouchIDAlert(
        email: 'johnapplebase86@icloud.com',
        onCancel: () => Navigator.of(context).pop(),
      ),
    );
  }

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
              "Authenticate using Fingerprint",
              style: TextStyle(
                color: Color(0xFFD07CBA),
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "add your fingerprint in order to provide an extra layer of security to the app",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(
              height: 60.h,
            ),
          ],
        ),
      ),
    );
  }
}
