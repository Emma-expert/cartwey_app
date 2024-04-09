import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onboarding_screens/constants/content_models.dart';

import 'package:onboarding_screens/signup/loginPage.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  late PageController _controller;
  final _pageController = PageController();
  final int _currentPage = 0;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  ' ${_currentPage + 1}',
                  style: const TextStyle(fontSize: 20),
                ),
                const Spacer(),
                TextButton(
                  style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          color: Color.fromARGB(255, 0, 140, 255))),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ));
                  },
                  child: const Text('Skip'),
                ),
              ],
            ),
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          contents[i].image,
                          height: 300,
                        ),
                        Text(
                          contents[i].title,
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 40),
                        Text(
                          contents[i].description,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                  (index) => buildDot(index, context),
                ),
              ),
            ),
            Container(
              height: 60,
              margin: const EdgeInsets.all(40),
              width: double.infinity,
              child: ElevatedButton(
                child: const Text(
                  'Continue',
                ),
                onPressed: () {
                  if (currentIndex == contents.length - 1) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LoginPage(),
                      ),
                    );
                  }
                  _controller.nextPage(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                },
                style: ButtonStyle(
                  //backgroundColor: Color(Colors.green as int)
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
