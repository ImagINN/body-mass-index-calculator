import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    required this.changeCurrentPage,
    super.key,
  });

  final Function(String requestedPageName) changeCurrentPage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(14, 88, 103, 1),
              Color.fromARGB(255, 103, 128, 182),
              Color.fromARGB(255, 39, 2, 87),
            ],
          ),
        ),
        child: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Image.asset(
              'assets/images/calculator.png',
              width: 200,
            ),
            const SizedBox(height: 60),
            const Text(
              'Welcome to Body Mass Index Calculator',
              style: TextStyle(
                color: Color.fromARGB(255, 184, 224, 255),
                fontSize: 30,
                fontStyle: FontStyle.normal,
                decoration: TextDecoration.none,
              ),
              textAlign: TextAlign.center,
              softWrap: true,
            ),
            const SizedBox(height: 20),
            OutlinedButton.icon(
              onPressed: () {
                changeCurrentPage('question_page');
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 102, 0, 255),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(42)),
                ),
                side: const BorderSide(
                  color: Color.fromRGBO(210, 141, 240, 1),
                  width: 2,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              ),
              icon: const Text(
                'Calculate BMI',
                style: TextStyle(
                  color: Color.fromARGB(255, 184, 224, 255),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              label: Image.asset(
                'assets/images/arrow-right.png',
                width: 32,
                color: const Color.fromARGB(255, 184, 224, 255),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
