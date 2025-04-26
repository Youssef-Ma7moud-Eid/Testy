import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class RecordPopupMenu extends StatelessWidget {
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const RecordPopupMenu({
    super.key,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.white,
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 'edit',
          onTap: onEdit,
          child: Row(
            children: [
              const Icon(
                IconlyLight.edit,
                color: Colors.red,
              ),
              Text(
                'edit',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'delete',
          onTap: onDelete,
          child: Row(
            children: [
              const Icon(
                IconlyLight.delete,
                color: Colors.red,
              ),
              SizedBox(
                height: 5,
              ),
              Text('delete'),
            ],
          ),
        ),
      ],
    );
  }
}
