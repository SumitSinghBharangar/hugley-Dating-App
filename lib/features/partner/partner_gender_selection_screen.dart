import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/scale_button.dart';
import 'package:hugley/features/partner/select_partner_disability_screen.dart';
import 'package:hugley/features/utils/utils.dart';

class PartnerGenderSelectionScreen extends StatefulWidget {
  const PartnerGenderSelectionScreen({super.key});

  @override
  State<PartnerGenderSelectionScreen> createState() =>
      _PartnerGenderSelectionScreenState();
}

class _PartnerGenderSelectionScreenState
    extends State<PartnerGenderSelectionScreen> {
  Set<String> selectedgenders = {};

  final List<String> gender = [
    "Women",
    "Men",
    "Non-binary",
    "I'm open to dating everyone"
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
                image: AssetImage("assets/images/img2.png"),
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
                    "Who would you like to date? ",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 35.sp,
                      color: Color(0xFFC765AC),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 22.w,
            ),
            child: Text(
              "You can choose more than one answer and change anytime.",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18.sp,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: gender.length,
              itemBuilder: (context, index) {
                final isselected = selectedgenders.contains(gender[index]);
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
                        isselected
                            ? Colors.purple
                            : Colors.transparent, // Violet color
                        isselected
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
                        if (!isselected) {
                          selectedgenders.add(gender[index]);
                        } else {
                          selectedgenders.remove(gender[index]);
                        }
                      });
                      // Handle country selection
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
                    screen: SelectPartnerDisabilityScreen(),
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
