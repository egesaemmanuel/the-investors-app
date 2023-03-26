import 'package:flutter/material.dart';

class MarketingPage extends StatelessWidget {
  const MarketingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: const Text(
            'Marketing Page',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
