import 'package:flutter/material.dart';
import 'package:odev2_gokhan_sal/question_page.dart';
import 'package:odev2_gokhan_sal/result_page.dart';
import 'package:odev2_gokhan_sal/welcome_page.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  String pageName = 'welcome_page';
  late Widget currentPage;

  @override
  void initState() {
    super.initState();
    showCurrentPage();
  }

  void changeCurrentPage(String requestedPageName) {
    setState(() {
      pageName = requestedPageName;
      showCurrentPage();
    });
  }

  void showCurrentPage() {
    if (pageName == 'welcome_page') {
      currentPage = WelcomePage(changeCurrentPage: changeCurrentPage);
    } else if (pageName == 'question_page') {
      currentPage = QuestionPage(changeCurrentPage: changeCurrentPage);
    } else if (pageName == 'result_page') {
      currentPage = ResultPage(
          changeCurrentPage: changeCurrentPage,
          bmiValue: 0.0,
          age: 0,
          height: 0,
          weight: 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
          child: currentPage,
        ),
      ),
    );
  }
}
