import 'package:flutter/material.dart';
import 'package:test/Features/Access%20Requests/presentation/views/widgets/access_requests_body.dart';
import 'package:test/Features/Access%20Requests/custom_app_bar.dart';

class AccessRequestView extends StatelessWidget {
  const AccessRequestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'Access requests',
          ),
        body: AccessRequestsBody());
  }
}

