import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/widgets/list_tile_card.dart';
import 'package:hugley/features/chat/chat_screen.dart';
import 'package:hugley/features/utils/utils.dart';

class ManagementListScreen extends StatefulWidget {
  const ManagementListScreen({super.key});

  @override
  State<ManagementListScreen> createState() => _ManagementListScreenState();
}

class _ManagementListScreenState extends State<ManagementListScreen> {
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
            onPressed: () {
              Utils.go(
                context: context,
                screen: ChatScreen(),
              );
            },
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
          horizontal: 10.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              listTileCard(
                title: "Profile Management",
                subtitle:
                    "Allow coretakers to edit your profiie details, preferences, and personal information",
              ),
              listTileCard(
                title: "Communication Management",
                subtitle:
                    "Enable caretaker to view and manage your message and match intraction",
              ),
              listTileCard(
                title: "Profile Management",
                subtitle:
                    "Allow caretaker to edit your profile details,preferences,and personal information.",
              ),
              listTileCard(
                title: "Privacy and Security",
                subtitle:
                    "Grant caretaker the ability to and user visibility, block users, and hadle privacy settings.",
              ),
              listTileCard(
                title: 'Activity Monitoring',
                subtitle:
                    "Provide caretaker with access to view your activity logs and flogged intactions.",
              ),
              listTileCard(
                title: "Match and Discovery Preferences",
                subtitle:
                    "LED caretaker update your matching and manage your closecoverabiliy",
              ),
              listTileCard(
                title: "Emergency Alert and Oversight",
                subtitle:
                    "Allow caretaker to receive after alerts and approve or flag intractions for your security.",
              ),
              SizedBox(
                height: MediaQuery.of(context).padding.bottom + 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
