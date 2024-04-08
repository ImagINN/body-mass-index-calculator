import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:odev2_gokhan_sal/models/vki.dart';
import 'package:odev2_gokhan_sal/result_page.dart';

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
  double _age = 1.0;
  double _height = 1.0;
  double _weight = 1.0;

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
            color: Colors.white, // Başlık metninin rengi
            fontSize: 24,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 63, 111, 138),
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
        decoration: gradient,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Enter your information',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 30,
                  fontStyle: FontStyle.normal,
                  decoration: TextDecoration.none,
                ),
              ),
              const SizedBox(height: 60.0),
              Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Age',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  )),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 8.0,
                  thumbShape:
                      const RoundSliderThumbShape(enabledThumbRadius: 13.0),
                  overlayShape:
                      const RoundSliderOverlayShape(overlayRadius: 20.0),
                ),
                child: Slider(
                  value: _age,
                  min: 1.0,
                  max: 100.0,
                  divisions: 199,
                  label: _age.round().toString(),
                  onChanged: (newValue) {
                    setState(() {
                      _age = newValue;
                    });
                  },
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Height (cm)',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  )),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 8.0,
                  thumbShape:
                      const RoundSliderThumbShape(enabledThumbRadius: 13.0),
                  overlayShape:
                      const RoundSliderOverlayShape(overlayRadius: 20.0),
                ),
                child: Slider(
                  value: _height,
                  min: 1.0,
                  max: 250.0,
                  divisions: 199,
                  label: _height.round().toString(),
                  onChanged: (newValue) {
                    setState(() {
                      _height = newValue;
                    });
                  },
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Wieght (kg)',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  )),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 8.0,
                  thumbShape:
                      const RoundSliderThumbShape(enabledThumbRadius: 13.0),
                  overlayShape:
                      const RoundSliderOverlayShape(overlayRadius: 20.0),
                ),
                child: Slider(
                  value: _weight,
                  min: 1.0,
                  max: 200.0,
                  divisions: 199,
                  label: _weight.round().toString(),
                  onChanged: (newValue) {
                    setState(() {
                      _weight = newValue;
                    });
                  },
                ),
              ),
              const SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Age: ${_age.toInt()}',
                    style: const TextStyle(fontSize: 22.0, color: Colors.white),
                  ),
                  Text(
                    'Height: ${_height.toInt()}',
                    style: const TextStyle(fontSize: 22.0, color: Colors.white),
                  ),
                  Text(
                    'Weight: ${_weight.toInt()}',
                    style: const TextStyle(fontSize: 22.0, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 40.0),
              OutlinedButton.icon(
                onPressed: () {
                  // Calculate BMI butonuna tıklandığında hesaplama yapılacak
                  VKI vki = VKI(
                    _age.toInt(),
                    _height.toInt(),
                    _weight.toInt(),
                  );
                  double bmi = vki.calculateBMI(_weight, _height);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        bmiValue: bmi,
                        age: _age.toInt(),
                        height: _height.toInt(),
                        weight: _weight.toInt(),
                        changeCurrentPage: widget.changeCurrentPage,
                      ),
                    ),
                  );
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
            ],
          ),
        ),
      ),
    );
  }
}
