import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});
  @override
  State<Questions> createState() {
    return _Questions();
  }
}

class _Questions extends State<Questions> {
  @override
  Widget build(context) {
    return const Center(
      child: Text('Questions Screen'),
    );
  }
}
