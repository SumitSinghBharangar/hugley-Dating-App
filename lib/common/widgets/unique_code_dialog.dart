import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hugley/common/buttons/dynamic_button.dart';

class UniqueCodeDialog extends StatelessWidget {
  final String code;
  final VoidCallback? onTap;

  const UniqueCodeDialog({
    super.key,
    required this.code,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Unique Code',
              style: TextStyle(
                fontSize: 24,
                color: Colors.pink[300],
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Enter this code to proceed with your verification',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.pink[400],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    code,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Clipboard.setData(
                          ClipboardData(text: code),
                        );
                      },
                      icon: Icon(
                        Icons.copy_rounded,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            SizedBox(height: 20),
            DynamicButton.fromText(
              text: "Proceed",
              onPressed: onTap,
            ),
          ],
        ),
      ),
    );
  }
}
