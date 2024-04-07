import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({
    required this.changeCurrentPage,
    Key? key,
  }) : super(key: key);

  final Function(String requestedPageName) changeCurrentPage;

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    Decoration gradient = const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color.fromRGBO(14, 88, 103, 1),
          Color.fromARGB(255, 103, 128, 182),
          Color.fromARGB(255, 39, 2, 87),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Question Page',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 24,
          ),
        ),
        leading: Container(
          margin: const EdgeInsets.only(left: 16.0),
          child: IconButton(
            icon: Image.asset('assets/images/back-button.png', width: 30),
            tooltip: 'Go back',
            color: const Color.fromARGB(255, 255, 255, 255),
            onPressed: () {
              widget.changeCurrentPage('welcome_page');
            },
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 63, 111, 138),
      ),
      body: Container(
        decoration: gradient,
        child: const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Question Page',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Geçici olarak eklenmiş dummy fonksiyon
  void _dummyFunction(String requestedPageName) {
    // Bu fonksiyon hiçbir iş yapmaz, sadece geçici bir çözümdür
  }
}
