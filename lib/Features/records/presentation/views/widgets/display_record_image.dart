import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test/Features/records/presentation/manager/manage_record_image/manage_upload_image_cubit.dart';

class DisplayRecordImage extends StatelessWidget {
  const DisplayRecordImage({super.key, required this.image});
  final dynamic image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          height: 215,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: _isImageFile(image)
                ? DecorationImage(
                    image: FileImage(image),
                    fit: BoxFit.cover,
                  )
                : null,
          ),
        ),
        Positioned(
          left: 380,
          top: 8,
          child: GestureDetector(
            onTap: () {
              BlocProvider.of<ManageUploadImageCubit>(context).deleteimage();
            },
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                FontAwesomeIcons.close,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

bool _isImageFile(dynamic file) {
  if (file == null) return false;

  final path;

  try {
    path = file.path.toLowerCase();
    return path.endsWith('.png') ||
        path.endsWith('.jpg') ||
        path.endsWith('.jpeg') ||
        path.endsWith('.gif') ||
        path.endsWith('.bmp') ||
        path.endsWith('.webp');
  } catch (e) {
    return false;
  }
}
