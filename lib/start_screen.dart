import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            alignment: Alignment.center,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 250,
          //     alignment: Alignment.center,
          //   ),
          // ),
          const SizedBox(height: 80),
          const Text(
            'Learn Flutter the fun way',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {
              print('Button Pressed');
            },
            label: const Text("Start Quiz"),
            icon: const Icon(
              Icons.arrow_right_alt,
            ),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white70,
            ),
          )
        ],
      ),
    );
  }
}
