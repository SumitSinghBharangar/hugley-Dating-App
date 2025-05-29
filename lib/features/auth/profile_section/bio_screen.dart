import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/dynamic_button.dart';
import 'package:hugley/features/auth/profile_section/notification_permission_screen.dart';
import 'package:hugley/features/utils/utils.dart';

class BioScreen extends StatefulWidget {
  const BioScreen({super.key});

  @override
  State<BioScreen> createState() => _BioScreenState();
}

class _BioScreenState extends State<BioScreen> {
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
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 22.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Text(
                'Add a Bio',
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFD782B7),
                ),
              ),
              Text(
                "Prompt a few lines about yourself which others wil see in order to know you",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              BioTextField(
                maxLength: 500,
                placeholder: "Your Bio",
              ),
              SizedBox(
                height: 40.h,
              ),
              Center(
                child: SizedBox(
                  width: 300,
                  child: DynamicButton.fromText(
                    text: "Proceed",
                    onPressed: () {
                      Utils.go(
                        context: context,
                        screen: NotificationPermissionScreen(),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BioTextField extends StatefulWidget {
  final int maxLength;
  final String placeholder;
  final Function(String)? onChanged;

  const BioTextField({
    super.key,
    this.maxLength = 500,
    this.placeholder = 'Your bio',
    this.onChanged,
  });

  @override
  _BioTextFieldState createState() => _BioTextFieldState();
}

class _BioTextFieldState extends State<BioTextField> {
  final TextEditingController _controller = TextEditingController();
  int characterCount = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        characterCount = _controller.text.length;
      });
      if (widget.onChanged != null) {
        widget.onChanged!(_controller.text);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          TextField(
            controller: _controller,
            maxLength: widget.maxLength,
            maxLines: 6,
            decoration: InputDecoration(
              hintText: widget.placeholder,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.grey.shade200,
              contentPadding: EdgeInsets.all(16),
              counterText: '', // Hide the default counter
            ),
          ),
          Positioned(
            right: 16,
            bottom: 16,
            child: Text(
              '$characterCount/${widget.maxLength}',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
