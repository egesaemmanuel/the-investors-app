import 'package:flutter/material.dart';

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        children: [
          const Icon(
            Icons.assessment,
            color: Color(0xFF0567FB),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'Menu',
          ),
          const SizedBox(
            width: 130,
          ),
          Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).closeDrawer();
              },
              icon: const Icon(Icons.close),
            ),
          ),
        ],
      ),
    );
  }
}
