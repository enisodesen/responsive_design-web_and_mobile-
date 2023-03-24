import 'package:flutter/material.dart';

class OrientationExample extends StatelessWidget {
  const OrientationExample({super.key});

  @override
  Widget build(BuildContext context) => OrientationBuilder(
        builder: (context, orientation) {
          final isPortrait = orientation == Orientation.portrait;
          final isLandspace = orientation == Orientation.landscape;

          return Scaffold(
            appBar: AppBar(
              title: const Text('Orientation'),
              centerTitle: true,
            ),
            drawer: isPortrait
                ? Drawer(
                    child: Container(
                      color: Colors.blue,
                      width: 300,
                      child: const Center(child: Text('SideBar')),
                    ),
                  )
                : null,
            body: GridView.count(
              crossAxisCount: isPortrait ? 2 : 3,
              children: List.generate(
                  40,
                  (index) => Card(
                        color: Colors.orange,
                        child: Center(
                          child: Text('Item $index'),
                        ),
                      )),
            ),
          );
        },
      );
}
