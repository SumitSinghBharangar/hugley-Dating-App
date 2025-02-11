import 'package:flutter/material.dart';
import 'package:hugley/common/buttons/scale_button.dart';
import 'package:hugley/features/notification/notification_screen.dart';
import 'package:hugley/features/settings/help_support_screen.dart';
import 'package:hugley/features/settings/setting_screen.dart';
import 'package:hugley/features/utils/utils.dart';

class HugleyProfileScreen extends StatefulWidget {
  const HugleyProfileScreen({super.key});

  @override
  State<HugleyProfileScreen> createState() => _HugleyProfileScreenState();
}

class _HugleyProfileScreenState extends State<HugleyProfileScreen> {
  bool notificationsEnabled = true;
  bool locationEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.pink),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Hugley',
          style: TextStyle(
            color: Colors.pink,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.pink),
            onPressed: () {
              Utils.go(context: context, screen: SettingScreen());
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.purple,
                child: CircleAvatar(
                  radius: 48,
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-photo/young-caucasian-brunette-rocks-beach-with-closed-eyes_181624-37395.jpg?semt=ais_hybrid'),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                '@Vee Terry',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 24),
              _buildSettingItem('Edit Profile', Icons.person_outline,
                  onTap: () {}),
              ScaleButton(
                onTap: () {
                  Utils.go(context: context, screen: NotificationScreen());
                },
                child: _buildSwitchItem(
                  'Notification',
                  Icons.notifications_none,
                  notificationsEnabled,
                  (value) {
                    setState(() => notificationsEnabled = value);
                  },
                ),
              ),
              _buildSwitchItem(
                'Location',
                Icons.location_on_outlined,
                locationEnabled,
                (value) {
                  setState(() => locationEnabled = value);
                },
              ),
              _buildSettingItem('Linked Accounts', Icons.link, onTap: () {}),
              const SizedBox(height: 24),
              _buildSettingItem('Help Center', Icons.help_outline, onTap: () {
                Utils.go(
                  context: context,
                  screen: HelpSupportScreen(),
                );
              }),
              _buildSettingItem('About Us', Icons.info_outline, onTap: () {}),
              _buildSettingItem('Logout', Icons.logout, onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingItem(String title, IconData icon,
      {required VoidCallback onTap}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Color(0xFFECC1DA))),
      child: ListTile(
        leading: Icon(icon, color: Colors.pink),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }

  Widget _buildSwitchItem(
    String title,
    IconData icon,
    bool value,
    ValueChanged<bool> onChanged,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.pink),
        title: Text(title),
        trailing: Switch(
          value: value,
          onChanged: onChanged,
          activeColor: Colors.purple,
        ),
      ),
    );
  }
}
