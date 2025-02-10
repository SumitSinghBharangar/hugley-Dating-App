import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugley/common/buttons/dynamic_button.dart';
import 'package:hugley/features/auth/profile_section/select_gender_screen.dart';

import 'package:hugley/features/utils/utils.dart';

class SelectCountryScreen extends StatefulWidget {
  const SelectCountryScreen({super.key});

  @override
  State<SelectCountryScreen> createState() => _SelectCountryScreenState();
}

class _SelectCountryScreenState extends State<SelectCountryScreen> {
  final TextEditingController _searchController = TextEditingController();
  String searchQuery = '';
  String selected = "";

  final List<Map<String, String>> countries = [
    {"name": "Algeria", "flag": "🇩🇿"},
    {"name": "Afghanistan", "flag": "🇦🇫"},
    {"name": "Andorra", "flag": "🇦🇩"},
    {"name": "Australia", "flag": "🇦🇺"},
    {"name": "Bangladesh", "flag": "🇧🇩"},
    {"name": "Belgium", "flag": "🇧🇪"},
    {"name": "Brazil", "flag": "🇧🇷"},
    {"name": "Canada", "flag": "🇨🇦"},
    {"name": "Cameroon", "flag": "🇨🇲"},
  ];
  List<Map<String, String>> get filteredCountries {
    return countries
        .where((country) =>
            country["name"]!.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();
  }

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
        title: Text("Select Country"),
        centerTitle: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                controller: _searchController,
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.purple)),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredCountries.length,
                itemBuilder: (context, index) {
                  final country = filteredCountries[index];
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 400),
                    margin: const EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400]!),
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft, // Start from top-left
                        end: Alignment.bottomRight, // End at bottom-right
                        colors: [
                          country["name"] == selected
                              ? Colors.purple
                              : Colors.transparent, // Violet color
                          country["name"] == selected
                              ? Colors.pink
                              : Colors.transparent, // Pink color
                        ],
                      ),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 4,
                      ),
                      leading: Text(
                        country["flag"]!,
                        style: const TextStyle(fontSize: 24),
                      ),
                      title: Text(
                        country["name"]!,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          selected = country["name"]!;
                        });
                        // Handle country selection
                        print('Selected country: ${country["name"]}');
                      },
                    ),
                  );
                },
              ),
            ),
            Center(
              child: SizedBox(
                height: 60.h,
                width: 300.w,
                child: DynamicButton.fromText(
                  text: "Next",
                  onPressed: () {
                    Utils.go(
                      context: context,
                      screen: SelectGenderScreen(),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}
