import 'package:flutter/material.dart';
import 'package:hugley/common/widgets/notification_item.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: 24),
              _buildNotificationSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 16,
              backgroundImage: NetworkImage(
                  'https://img.freepik.com/free-photo/young-caucasian-brunette-rocks-beach-with-closed-eyes_181624-37395.jpg?semt=ais_hybrid'),
            ),
            const SizedBox(width: 8),
            Text(
              'Hugley',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.pink[300],
              ),
            ),
          ],
        ),
        IconButton(
          icon: const Icon(Icons.settings_outlined),
          onPressed: () {},
          color: Colors.pink[200],
        ),
      ],
    );
  }

  Widget _buildNotificationSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Notifications',
          style: TextStyle(
            fontSize: 20,
            color: Colors.purple[200],
            fontWeight: FontWeight.w500,
          ),
        ),
        const Text(
          'Here is a list of Notification for you',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 16),
        _buildTimeSection('Today', [
          NotificationItem(
            title: 'Kendro vilwed your profile',
            timeAgo: '30 mins ago',
          ),
          NotificationItem(
            title: 'Kendra viewed your profile',
            timeAgo: '3 hours ago',
          ),
        ]),
        const SizedBox(height: 16),
        _buildTimeSection('Yesterday', [
          NotificationItem(
            title: 'Kendra swiped you right',
            timeAgo: '30 mins ago',
          ),
          NotificationItem(
            title: 'Kendro viewed your profile',
            timeAgo: '3 hours ago',
          ),
        ]),
      ],
    );
  }

  Widget _buildTimeSection(String title, List<Widget> notifications) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: Colors.purple[200],
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        ...notifications,
      ],
    );
  }
}
