import 'package:flutter/material.dart';
import 'package:hugley/common/buttons/dynamic_button.dart';
import 'package:hugley/features/auth/profile_section/drink_selection_screen.dart';
import 'package:hugley/features/utils/utils.dart';

class InterestsSelectionScreen extends StatefulWidget {
  const InterestsSelectionScreen({super.key});

  @override
  State<InterestsSelectionScreen> createState() =>
      _InterestsSelectionScreenState();
}

class _InterestsSelectionScreenState extends State<InterestsSelectionScreen> {
  Set<String> selectedInterests = {};

  final List<Map<String, dynamic>> interests = [
    {'name': 'Photography', 'icon': Icons.camera_alt_outlined},
    {'name': 'Shopping', 'icon': Icons.shopping_bag_outlined},
    {'name': 'Games', 'icon': Icons.sports_esports_outlined},
    {'name': 'Yoga', 'icon': Icons.self_improvement_outlined},
    {'name': 'Cooking', 'icon': Icons.restaurant_outlined},
    {'name': 'Tennis', 'icon': Icons.sports_tennis_outlined},
    {'name': 'Run', 'icon': Icons.directions_run_outlined},
    {'name': 'Swimming', 'icon': Icons.pool_outlined},
    {'name': 'Art', 'icon': Icons.palette_outlined},
    {'name': 'Traveling', 'icon': Icons.flight_outlined},
    {'name': 'Drama', 'icon': Icons.theater_comedy_outlined},
    {'name': 'Music', 'icon': Icons.music_note_outlined},
    {'name': 'Drink', 'icon': Icons.local_bar_outlined},
    {'name': 'Video games', 'icon': Icons.videogame_asset_outlined},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.pop(context),
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your interests',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Color(0xFFE75799),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Select a few of your interests and let everyone\nknow what you're passionate about",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: interests.map((interest) {
                    final isSelected =
                        selectedInterests.contains(interest['name']);
                    return FilterChip(
                      label: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            interest['icon'],
                            size: 18,
                            color: isSelected ? Colors.white : Colors.pink,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            interest['name'],
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.black87,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      selected: isSelected,
                      onSelected: (bool selected) {
                        setState(() {
                          if (selected) {
                            selectedInterests.add(interest['name']);
                          } else {
                            selectedInterests.remove(interest['name']);
                          }
                        });
                      },
                      showCheckmark: false,
                      backgroundColor: Colors.white,
                      selectedColor: const Color(0xFFE75799),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(
                          color: isSelected
                              ? Colors.transparent
                              : Colors.grey.withOpacity(0.2),
                        ),
                      ),
                      elevation: 1,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                    );
                  }).toList(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            DynamicButton.fromText(
              text: "Next",
              onPressed: () {
                Utils.go(
                  context: context,
                  screen: DrinkSelectionScreen(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
