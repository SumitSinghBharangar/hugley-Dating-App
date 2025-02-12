import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/features/management/management_list_screen.dart';
import 'package:hugley/features/settings/add_face_id_screen.dart';
import 'package:hugley/features/settings/add_finger_print_screen.dart';
import 'package:hugley/features/settings/block_list_screen.dart';
import 'package:hugley/features/settings/change_password_screen.dart';
import 'package:hugley/features/settings/change_visivility_screen.dart';
import 'package:hugley/features/utils/utils.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
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
                screen: ManagementListScreen(),
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
          horizontal: 22.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            _buttonCard(
              "Change Password",
              Icons.lock,
              onTap: () {
                Utils.go(
                  context: context,
                  screen: ChangePasswordScreen(),
                );
              },
            ),
            _buttonCard(
              "Add FingerPrint",
              Icons.fingerprint,
              onTap: () {
                Utils.go(
                  context: context,
                  screen: AddFingerPrintScreen(),
                );
              },
            ),
            _buttonCard(
              "Add Facial Recognition",
              Icons.face,
              onTap: () {
                Utils.go(
                  context: context,
                  screen: AddFaceIdScreen(),
                );
              },
            ),
            _buttonCard(
              "Visibility Setting",
              Icons.visibility,
              onTap: () {
                Utils.go(
                  context: context,
                  screen: ChangeVisivilityScreen(),
                );
              },
            ),
            _buttonCard(
              "Bloc List",
              Icons.block,
              onTap: () {
                Utils.go(
                  context: context,
                  screen: BlockListScreen(),
                );
              },
            ),
            _buttonCard(
              "Privacy",
              Icons.privacy_tip,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buttonCard(String title, IconData icon,
      {required VoidCallback onTap}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color(0xFFECC1DA),
          width: 2.5,
        ),
      ),
      child: ListTile(
        leading: Icon(icon, color: Color(0xFFF85D82)),
        title: Text(title),
        onTap: onTap,
      ),
    );
  }
}
