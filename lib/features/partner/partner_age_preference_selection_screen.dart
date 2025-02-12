import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/scale_button.dart';
import 'package:hugley/features/auth/profile_section/bio_screen.dart';
import 'package:hugley/features/utils/utils.dart';

class PartnerAgePreferenceSelectionScreen extends StatefulWidget {
  const PartnerAgePreferenceSelectionScreen({super.key});

  @override
  State<PartnerAgePreferenceSelectionScreen> createState() =>
      _PartnerAgePreferenceSelectionScreenState();
}

class _PartnerAgePreferenceSelectionScreenState
    extends State<PartnerAgePreferenceSelectionScreen> {
  String selected = "";
  final List<String> age = [
    "18 - 30 Years",
    "31 - 50 Years",
    "51- 70 Years",
    "Above 70",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 350.h,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/img4.png",
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
                  Row(
                    children: [
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
                      ScaleButton(
                          onTap: () {},
                          child: Text(
                            "Skip",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ))
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: Text(
              'Age Preference',
              style: TextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
                color: Color(0xFFD782B7),
              ),
            ),
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: Text(
              "Let us Know your age preferences,what age of peoples are you looking for",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: age.length,
              itemBuilder: (context, index) {
                return AnimatedContainer(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 5.h,
                  ),
                  duration: Duration(milliseconds: 400),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[400]!),
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft, // Start from top-left
                      end: Alignment.bottomRight, // End at bottom-right
                      colors: [
                        age[index] == selected
                            ? Colors.purple
                            : Colors.transparent, // Violet color
                        age[index] == selected
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
                      age[index],
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        selected = age[index];
                      });
                      // Handle country selection
                      print('Selected country: $age[index]}');
                    },
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 20.w,
              ),
              ScaleButton(
                onTap: () {
                  Utils.go(
                    context: context,
                    screen: BioScreen(),
                  );
                },
                child: Container(
                  height: 60.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft, // Start from top-left
                      end: Alignment.bottomRight, // End at bottom-right
                      colors: [
                        Color(0xFF9C27B0), // Purple
                        Color(0xFFE91E63), // Pink color
                      ],
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 20.w,
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).padding.bottom + 20.h,
          ),
        ],
      ),
    );
  }
}
