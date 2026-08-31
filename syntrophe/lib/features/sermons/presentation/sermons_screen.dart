import 'package:flutter/material.dart';

class SermonsScreen extends StatelessWidget {
  const SermonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sermons'),
      ),
      body: const Center(
        child: Text('Sermons Module'),
      ),
    );
  }
}
