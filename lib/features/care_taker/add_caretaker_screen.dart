import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/scale_button.dart';
import 'package:hugley/common/widgets/caretaker_widget.dart';
import 'package:hugley/common/widgets/unique_code_dialog.dart';
import 'package:hugley/features/care_taker/verification_screen.dart';
import 'package:hugley/features/utils/utils.dart';

class AddCaretakerScreen extends StatefulWidget {
  const AddCaretakerScreen({super.key});

  @override
  State<AddCaretakerScreen> createState() => _AddCaretakerScreenState();
}

class _AddCaretakerScreenState extends State<AddCaretakerScreen> {
  bool caretaker = false;
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
            child: Text(
              "Skip",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30.h,
            ),
            Text(
              "Add Caretaker",
              style: TextStyle(
                color: Color(0xFFD07CBA),
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Introducing a caretaker who you manage your account behalf of you",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            if (caretaker)
              CaretakerWidget(
                name: "Brule Fernald",
                role: "Monther",
                imageUrl:
                    "https://thumbs.dreamstime.com/b/beautiful-indian-woman-21389017.jpg",
                ontap: () {
                  setState(() {
                    caretaker = false;
                  });
                },
              ),
            SizedBox(
              height: 20.h,
            ),
            ScaleButton(
              onTap: () {
                if (!caretaker) {
                  showDialog(
                    context: context,
                    builder: (context) => UniqueCodeDialog(
                      code: 'HG-529184',
                      onTap: () {
                        setState(() {
                          caretaker = true;
                        });
                        Navigator.pop(context);
                      },
                    ),
                  );
                } else {
                  Utils.go(
                    context: context,
                    screen: CaretakerVerificationScreen(),
                  );
                }
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 15.h),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFD782B7), width: 2.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "+ Add Caretaker",
                  style: TextStyle(fontSize: 21.sp, color: Color(0xFFD782B7)),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
