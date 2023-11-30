import 'package:flutter/material.dart';
import 'package:paciente_tecnofarma/pages/wellcome1.dart';
import 'package:paciente_tecnofarma/pages/wellcome2.dart';
import 'package:paciente_tecnofarma/pages/wellcome3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(wellcome());
}

class wellcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WellcomeHomePage(),
    );
  }
}

class WellcomeHomePage extends StatelessWidget {
  final controller = PageController(
    initialPage: 0,
    keepPage: false, // Set to false to prevent wrapping around
  );

  @override
  Widget build(BuildContext context) {
    final _pages = [
      wellcome1(), 
      wellcome2(), 
      //wellcome3(), 
      ]; // Replace with your actual pages

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 64, 100),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                children: _pages,
              ),
            ),
            SmoothPageIndicator(
              controller: controller,
              count: _pages.length,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.white,
                dotColor: Color.fromARGB(255, 237, 230, 230),
                dotHeight: 15,
                dotWidth: 20,
                spacing: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
