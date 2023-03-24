import 'package:flutter/material.dart';

class OrientationExample extends StatelessWidget {
  const OrientationExample({super.key});

  @override
  Widget build(BuildContext context) => OrientationBuilder(
        builder: (context, orientation) {
          final isPortrait = orientation == Orientation.portrait;

          return isPortrait
              ? Container(
                  color: Colors.blue,
                  child: const Center(
                    child: Text('Portrait'),
                  ),
                )
              : Container(
                  color: Colors.red,
                  child: const Center(
                    child: Text('Landspace'),
                  ),
                );
        },
      );
}
