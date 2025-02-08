import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/dynamic_button.dart';

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
          icon: const Icon(Icons.arrow_back),
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
            // Search Bar
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
            // Grid of disabilities
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2.5,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: filteredDisabilities.length,
                itemBuilder: (context, index) {
                  final disability = filteredDisabilities[index];
                  final isSelected = selectedDisabilities.contains(disability);

                  return InkWell(
                    onTap: () {
                      setState(() {
                        if (isSelected) {
                          selectedDisabilities.remove(disability);
                        } else {
                          selectedDisabilities.add(disability);
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: isSelected
                              ? const Color(0xFFE75799)
                              : Colors.grey[300]!,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft, // Start from top-left
                          end: Alignment.bottomRight, // End at bottom-right
                          colors: [
                            isSelected
                                ? Colors.purple
                                : Colors.transparent, // Violet color
                            isSelected
                                ? Colors.pink
                                : Colors.transparent, // Pink color
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 0),
                      child: Center(
                        child: Text(
                          disability,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: isSelected ? Colors.white : Colors.black87,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Next button
            SizedBox(
              width: double.infinity,
              height: 60.h,
              child: DynamicButton.fromText(
                text: "Next",
                onPressed: () {},
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
