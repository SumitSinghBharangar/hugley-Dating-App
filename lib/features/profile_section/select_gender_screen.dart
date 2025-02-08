import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/dynamic_button.dart';
import 'package:hugley/common/buttons/scale_button.dart';
import 'package:hugley/features/profile_section/birthday_select_screen.dart';
import 'package:hugley/features/utils/utils.dart';

class SelectGenderScreen extends StatefulWidget {
  const SelectGenderScreen({super.key});

  @override
  State<SelectGenderScreen> createState() => _SelectGenderScreenState();
}

class _SelectGenderScreenState extends State<SelectGenderScreen> {
  String selected = "";
  final List<String> gender = [
    "Women",
    "Men",
    "Chomie angther",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 400.h,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/img1.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 22.w,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).padding.top + 20.h,
                  ),
                  ScaleButton(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 30.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios_new,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
            ),
            child: Text(
              "I am a",
              style: TextStyle(
                fontSize: 33.sp,
                color: Color(0xFFC08FD6),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: gender.length,
              itemBuilder: (context, index) {
                return AnimatedContainer(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 7.h,
                  ),
                  duration: Duration(milliseconds: 400),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[400]!),
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft, // Start from top-left
                      end: Alignment.bottomRight, // End at bottom-right
                      colors: [
                        gender[index] == selected
                            ? Colors.purple
                            : Colors.transparent, // Violet color
                        gender[index] == selected
                            ? Colors.pink
                            : Colors.transparent, // Pink color
                      ],
                    ),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 4,
                    ),
                    title: Text(
                      gender[index],
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        selected = gender[index];
                      });
                      // Handle country selection
                      print('Selected country: $gender[index]}');
                    },
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: SizedBox(
              height: 70.h,
              child: DynamicButton.fromText(
                text: "Next",
                onPressed: () {
                  Utils.go(context: context, screen: BirthdaySelectScreen());
                },
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).padding.bottom + 20.h,
          )
        ],
      ),
    );
  }
}
