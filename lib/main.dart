import 'package:flutter/material.dart';
//import 'package:test/Features/Access%20Requests/presentation/views/Access_request_view.dart';
//import 'package:test/statefull_lifesycle.dart';
//import 'package:test/Features/Available/presentation/views/Available_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth <= 400) {
              return AppLayout();
            } else {
              return Row(
                children: [
                  Expanded(child: AppLayout()),
                  Expanded(
                    child: SizedBox(
                      child: Center(
                        child: Text('Hello'),
                      ),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}

class AppLayout extends StatelessWidget {
  const AppLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
            title: Container(
          color: Colors.green,
          child: Text('$index'),
        ));
      },
    );
  }
}
