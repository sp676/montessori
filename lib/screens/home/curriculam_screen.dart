import 'package:flutter/material.dart';

class CurriculumScreen extends StatelessWidget {
  const CurriculumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Fetch curriculum data

    return Scaffold(
      appBar: AppBar(
        title: const Text('Curriculum'),
      ),
      body: const Center(
        child: Text('Curriculum Screen'),
      ),
    );
  }
}
