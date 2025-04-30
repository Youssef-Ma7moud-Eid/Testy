import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:test/Core/utilities/fuctions_pick_image.dart';
import 'package:test/Core/utilities/styles.dart';

class DisplayRecordIcons extends StatefulWidget {
  const DisplayRecordIcons({super.key});

  @override
  State<DisplayRecordIcons> createState() => _DisplayRecordIconsState();
}

class _DisplayRecordIconsState extends State<DisplayRecordIcons> {
   File? image;
  PlatformFile? file;
  Future<void> pickImage(int choose) async {
    try {
      final picked;
      if (choose == 1) {
        picked = await FuctionsPickImage.pickImageGallery();
      } else if (choose == 2) {
        picked = await FuctionsPickImage.pickFile();
      } else {
        picked = await FuctionsPickImage.pickImageCamera();
      }

      if ( choose == 2) {
        file = picked;
        
      } else {
        image = picked;
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to pick image: $e')),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              'Upload',
              style: Styles.newrecordtitle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    pickImage(1);
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 216, 233, 226),
                    ),
                    child: Icon(
                      color: Color.fromARGB(255, 55, 128, 99),
                      size: 50,
                      IconlyLight.image,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    pickImage(2);
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 227, 210, 187),
                    ),
                    child: Icon(
                      color: Color.fromARGB(255, 219, 173, 112),
                      size: 50,
                      IconlyLight.paper,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    pickImage(3);
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 225, 203, 203),
                    ),
                    child: Icon(
                        color: Color.fromARGB(255, 160, 65, 65),
                        size: 50,
                        IconlyLight.camera),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
  }
}