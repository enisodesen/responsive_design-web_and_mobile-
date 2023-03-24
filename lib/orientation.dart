import 'package:flutter/material.dart';

class OrientationPage extends StatelessWidget {
  const OrientationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.of(context).orientation == Orientation.portrait
          ? Container(
              color: Colors.blue,
              child: const Center(
                child: Text('Portrait'),
              ),
            )
          : Container(
              color: Colors.green,
              child: const Center(
                child: Text('Landspace'),
              ),
            ),
    );
  }
}
