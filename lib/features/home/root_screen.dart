import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/scale_button.dart';

import 'package:hugley/features/home/swipe_screen.dart';
import 'package:hugley/features/match/match_screen.dart';
import 'package:hugley/features/messages/message_list_screen.dart';
import 'package:iconsax/iconsax.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({
    super.key,
  });

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final List<Widget> screenList = [
    const MatchScreen(),
    const MessageListScreen(),
    const DatingAppHome(),
    const MatchScreen(),
    const MatchScreen(),
  ];
  int selectedIndex = 2;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const DatingAppHome();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomAppBar(
            notchMargin: 10,
            elevation: 0,
            color: Colors.white,
            child: SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ScaleButton(
                    scale: .97,
                    onTap: () {
                      setState(() {
                        currentScreen = const MatchScreen();
                        selectedIndex = 0;
                      });
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: selectedIndex == 0
                          ? Colors.pink.shade400
                          : Colors.transparent,
                      child: Icon(
                        selectedIndex == 0
                            ? Icons.favorite
                            : Icons.favorite_outline,
                        color: selectedIndex == 0 ? Colors.white : Colors.pink,
                      ),
                    ),
                  ),
                  ScaleButton(
                    scale: .97,
                    onTap: () {
                      setState(() {
                        currentScreen = const MessageListScreen();
                        selectedIndex = 1;
                      });
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: selectedIndex == 1
                          ? Colors.pink.shade400
                          : Colors.transparent,
                      child: Icon(
                        selectedIndex == 1 ? Iconsax.message : Iconsax.message,
                        color: selectedIndex == 1 ? Colors.white : Colors.pink,
                      ),
                    ),
                  ),
                  ScaleButton(
                    scale: .97,
                    onTap: () {
                      setState(() {
                        currentScreen = const DatingAppHome();
                        selectedIndex = 2;
                      });
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: selectedIndex == 2
                          ? Colors.pink.shade400
                          : Colors.transparent,
                      child: Icon(
                        Iconsax.cards,
                        color: selectedIndex == 2 ? Colors.white : Colors.pink,
                      ),
                    ),
                  ),
                  ScaleButton(
                    scale: .97,
                    onTap: () {
                      setState(() {
                        currentScreen = const MatchScreen();
                        selectedIndex = 3;
                      });
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: selectedIndex == 3
                          ? Colors.pink.shade400
                          : Colors.transparent,
                      child: Icon(
                        Icons.notifications_none_sharp,
                        color: selectedIndex == 3 ? Colors.white : Colors.pink,
                      ),
                    ),
                  ),
                  ScaleButton(
                    scale: .97,
                    onTap: () {
                      setState(() {
                        currentScreen = const MatchScreen();
                        selectedIndex = 4;
                      });
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: selectedIndex == 4
                          ? Colors.pink.shade400
                          : Colors.transparent,
                      child: Icon(
                        Icons.person_outline,
                        color: selectedIndex == 4 ? Colors.white : Colors.pink,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
