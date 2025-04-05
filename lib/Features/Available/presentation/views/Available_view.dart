import 'package:flutter/material.dart';
import 'package:test/Features/Available/presentation/views/widgets/available_view_body.dart';
import 'package:test/Features/Available/presentation/views/widgets/custom_appbar.dart';
class AvailableView extends StatelessWidget {
  const AvailableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Available Doctors'),
      body:AvailableViewBody() ,
    );
  }
}
