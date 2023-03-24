// ignore_for_file: unused_element

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDesktop(BuildContext context) =>
        MediaQuery.of(context).size.width >= 600;

    bool isMobil(BuildContext context) =>
        MediaQuery.of(context).size.width < 600;

    // double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: isDesktop(context)
            ? Row(
                children: [
                  Container(
                    color: Colors.blue,
                    width: 200,
                    child: const Center(
                      child: Text('SIDEBAR'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      child: const Center(
                        child: Text('CONTENT'),
                      ),
                    ),
                  )
                ],
              )
            : Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      child: const Center(
                        child: Text('CONTENT'),
                      ),
                    ),
                  )
                ],
              ));
  }
}
