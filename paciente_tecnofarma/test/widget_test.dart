import 'package:flutter/material.dart';
import 'package:paciente_tecnofarma/pages/init.dart';
import 'package:paciente_tecnofarma/pages/loginpage.dart';
import 'package:paciente_tecnofarma/pages/wellcome.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

 class teste extends StatelessWidget {

  final _controler = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              children: const [
              /*  wellcome(),
                Inicio(),
                LoginPage(),*/
              ],/*activeDotColor: Colors.grey,
                    dotColor: Colors.grey,
                    dotHeight: 15,
                    dotWidth: 25,
                    spacing: 16,
                    type: WormType.thinUnderground*/
            ),
          ),
          SmoothPageIndicator(
            controller: _controler,
            count: 4,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey,
              dotColor: Colors.grey,
              dotHeight: 30,
              dotWidth: 30,
              spacing: 16,
            )
          )
        ]
      ),
    );

  }
}
