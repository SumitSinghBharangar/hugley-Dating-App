import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/widgets/profile_card.dart';

class MatchScreen extends StatefulWidget {
  const MatchScreen({super.key});

  @override
  State<MatchScreen> createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // App Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-photo/young-caucasian-brunette-rocks-beach-with-closed-eyes_181624-37395.jpg?semt=ais_hybrid'),
                    radius: 20,
                  ),
                  const SizedBox(width: 50),
                  Text(
                    'Hugley',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            // Matches Text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Matches',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.purple[200],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'This is a list of people who have Liked you and your matches.',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Tab Bar
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              height: 50,
              margin: EdgeInsets.symmetric(vertical: 16),
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                indicator: BoxDecoration(
                  shape: BoxShape.rectangle,
                  gradient: LinearGradient(
                    colors: [Colors.purple, Colors.pink],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(text: 'Likes'),
                  Tab(text: 'Like Sent'),
                  Tab(text: 'Match'),
                ],
              ),
            ),

            // Tab Bar View
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Likes Tab
                  GridView.builder(
                    padding: EdgeInsets.all(16),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ProfileCard();
                    },
                  ),
                  // Like Sent Tab
                  GridView.builder(
                    padding: EdgeInsets.all(16),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ProfileCard();
                    },
                  ),
                  // Match Tab
                  GridView.builder(
                    padding: EdgeInsets.all(16),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ProfileCard();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
