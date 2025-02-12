import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class listTileCard extends StatelessWidget {
  final String title;
  final String subtitle;
  const listTileCard({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        "assets/icons/notification_icon.png",
        height: 50.h,
        width: 50.w,
        fit: BoxFit.cover,
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
    );
  }
}
