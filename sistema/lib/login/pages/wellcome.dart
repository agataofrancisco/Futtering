import 'package:flutter/material.dart';
import 'package:sistema/login/pages/wellcome_1.dart';
import 'package:sistema/login/pages//wellcome_3.dart';
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
                const wellcome1(),
                const wellcome2(),
                const wellcome2(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controler,
            count: 4,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey,
              dotColor: Colors.white,
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


/*int _activePage = 0;

  final List<Widget> _pages = [
    const wellcome1(),
    const wellcome2(),
    const wellcome2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _activePage = page;
              });
            },
            itemCount: _pages.length,
            itemBuilder: (BuildContext context, int index) {
              return _pages[index % _pages.length];
            },
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 100,
            child: Container(
              color: Colors.black54,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                    _pages.length,
                        (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
                        onTap: () {
                          _pageController.animateToPage(index,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        },
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: _activePage == index
                              ? Colors.amber
                              : Colors.grey,
                        ),
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),*/