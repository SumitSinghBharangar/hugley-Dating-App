import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/scale_button.dart';
import 'package:hugley/features/profile/hugley_profile.dart';
import 'package:hugley/features/utils/utils.dart';

class DrinkSelectionScreen extends StatefulWidget {
  const DrinkSelectionScreen({super.key});

  @override
  State<DrinkSelectionScreen> createState() => _DrinkSelectionScreenState();
}

class _DrinkSelectionScreenState extends State<DrinkSelectionScreen> {
  String selected = "";
  final List<String> habit = [
    "Frequently",
    "Socially",
    "Rarely",
    "Never",
    "When sober"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300.h,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/img3.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).padding.top + 10.h,
                  ),
                  ScaleButton(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 30.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Icon(Icons.arrow_back_ios_new),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
            ),
            child: Text(
              "Do you Drink?",
              style: TextStyle(
                fontSize: 33.sp,
                color: Colors.purple,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
            ),
            child: Text(
              "Select the option that best describes drinking habit.",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: habit.length,
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
                        habit[index] == selected
                            ? Colors.purple
                            : Colors.transparent, // Violet color
                        habit[index] == selected
                            ? Colors.pink
                            : Colors.transparent, // Pink color
                      ],
                    ),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 2,
                    ),
                    title: Text(
                      habit[index],
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        selected = habit[index];
                      });
                      // Handle country selection
                      print('Selected country: $habit[index]}');
                    },
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ScaleButton(
                onTap: () {
                  Utils.go(context: context, screen: HugleyProfileScreen());
                },
                child: Container(
                  height: 60.h,
                  width: 60.w,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.pink),
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
          )
        ],
      ),
    );
  }
}
