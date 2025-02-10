import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/dynamic_button.dart';
import 'package:hugley/features/auth/profile_section/photo_selection_screen.dart';

import 'package:hugley/features/utils/utils.dart';

class DisabilitiesSelectionScreen extends StatefulWidget {
  const DisabilitiesSelectionScreen({super.key});

  @override
  State<DisabilitiesSelectionScreen> createState() =>
      _DisabilitiesSelectionScreenState();
}

class _DisabilitiesSelectionScreenState
    extends State<DisabilitiesSelectionScreen> {
  final TextEditingController _searchController = TextEditingController();
  Set<String> selectedDisabilities = {};

  final List<String> disabilities = [
    'Autism Spectrum Disorder',
    'Down Syndrome',
    'Speech and Language Disorders',
    'Williams Syndrome',
    'Fetal Alcohol Spectrum Disorder',
    'Dyslexia',
    'Intellectual Developmental Disorder',
    'Rett Syndrome',
    'Angelman Syndrome',
    'Prader-Willi Syndrome',
    'Attention Deficit Hyperactivity Disorder',
    'Dyspraxia',
    'Fragile X Syndrome',
    'Specific Learning Disabilities',
    'Cerebral Palsy',
    'Global Developmental Delay',
    'Turner Syndrome',
    'Klinefelter Syndrome',
  ];

  List<String> filteredDisabilities = [];

  @override
  void initState() {
    super.initState();
    filteredDisabilities = disabilities;
    _searchController.addListener(_filterDisabilities);
  }

  void _filterDisabilities() {
    setState(() {
      filteredDisabilities = disabilities
          .where((disability) => disability
              .toLowerCase()
              .contains(_searchController.text.toLowerCase()))
          .toList();
    });
  }

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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Choose Your\nIntellectual Disabilities',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFE75799),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Select the types of intellectual disabilities you work with',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: filteredDisabilities.map((disability) {
                    final isSelected =
                        selectedDisabilities.contains(disability);
                    return FilterChip(
                      label: Text(
                        disability,
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black87,
                          fontSize: 12,
                        ),
                      ),
                      selected: isSelected,
                      onSelected: (selected) {
                        setState(() {
                          if (selected) {
                            selectedDisabilities.add(disability);
                          } else {
                            selectedDisabilities.remove(disability);
                          }
                        });
                      },
                      backgroundColor: Colors.transparent,
                      selectedColor: Colors.pink,
                      checkmarkColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(
                          color: isSelected
                              ? const Color(0xFFE75799)
                              : Colors.grey[300]!,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 60.h,
              child: DynamicButton.fromText(
                text: "Next",
                onPressed: () {
                  Utils.go(
                    context: context,
                    screen: PhotoSelectionScreen(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
