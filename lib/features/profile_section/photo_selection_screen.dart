import 'package:flutter/material.dart';
import 'package:hugley/common/buttons/dynamic_button.dart';
import 'package:hugley/features/profile_section/intrest_selection_screen.dart';
import 'package:hugley/features/utils/utils.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class PhotoSelectionScreen extends StatefulWidget {
  const PhotoSelectionScreen({super.key});

  @override
  State<PhotoSelectionScreen> createState() => _PhotoSelectionScreenState();
}

class _PhotoSelectionScreenState extends State<PhotoSelectionScreen> {
  final List<File?> _selectedImages = List.generate(4, (index) => null);
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(int index) async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _selectedImages[index] = File(image.path);
      });
    }
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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Add your first ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF9C27B0), // Purple color
                    ),
                  ),
                  TextSpan(
                    text:
                        '${4 - _selectedImages.where((image) => image != null).length}',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFE91E63), // Pink color
                    ),
                  ),
                  const TextSpan(
                    text: '\nPhotos',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF9C27B0), // Purple color
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'You do you! Whether its you with your buddies, eating your fave meal, or in a place you love',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                children: List.generate(4, (index) {
                  return GestureDetector(
                    onTap: () => _pickImage(index),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(8),
                        image: _selectedImages[index] != null
                            ? DecorationImage(
                                image: FileImage(_selectedImages[index]!),
                                fit: BoxFit.cover,
                              )
                            : null,
                      ),
                      child: _selectedImages[index] == null
                          ? Icon(
                              Icons.add,
                              color: Colors.pink[300],
                              size: 40,
                            )
                          : null,
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 20),
            DynamicButton.fromText(
                text: "Next",
                onPressed: () {
                  Utils.go(
                    context: context,
                    screen: InterestsSelectionScreen(),
                  );
                })
          ],
        ),
      ),
    );
  }
}
