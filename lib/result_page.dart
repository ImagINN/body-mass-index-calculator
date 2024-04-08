import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double bmiValue;
  final int age, height, weight;
  final Function(String requestedPageName) changeCurrentPage;

  const ResultPage({
    required this.bmiValue,
    required this.age,
    required this.height,
    required this.weight,
    required this.changeCurrentPage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Decoration chosenDecoration;
    Color appBarColor;
    String resultMessage;

    if (bmiValue < 18.5) {
      resultMessage = 'You are underweight, you should eat more.';
      appBarColor = const Color.fromARGB(255, 144, 151, 63);
      chosenDecoration = const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 32, 38, 0),
            Color.fromARGB(255, 144, 151, 63),
            Color.fromARGB(255, 27, 27, 1),
          ],
        ),
      );
    } else if (bmiValue >= 18.5 && bmiValue <= 24.9) {
      resultMessage = 'You are normal weight, keep it up!';
      appBarColor = const Color.fromARGB(255, 63, 151, 89);
      chosenDecoration = const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 0, 38, 12),
            Color.fromARGB(255, 63, 151, 89),
            Color.fromARGB(255, 1, 27, 8),
          ],
        ),
      );
    } else {
      resultMessage = 'You are overweight, you should eat less.';
      appBarColor = const Color.fromARGB(255, 151, 63, 63);
      chosenDecoration = const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 38, 0, 0),
            Color.fromARGB(255, 151, 63, 63),
            Color.fromARGB(255, 27, 1, 1),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Result Page',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 24,
          ),
        ),
        backgroundColor: appBarColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        decoration: chosenDecoration,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Age: $age',
                style: const TextStyle(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                'Height: $height cm',
                style: const TextStyle(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                'Weight: $weight kg',
                style: const TextStyle(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Text(
                'BMI: ${bmiValue.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(height: 40),
              Text(
                resultMessage,
                style: const TextStyle(fontSize: 30, color: Colors.white),
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
