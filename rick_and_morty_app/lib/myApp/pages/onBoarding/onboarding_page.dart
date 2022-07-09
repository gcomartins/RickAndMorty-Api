import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rick_and_morty_app/myApp/pages/onBoarding/onboarding_controller.dart';

class OnBoardingPage extends StatefulWidget {
  final OnBoardingController controller;
  const OnBoardingPage({
    super.key,
    required this.controller,
  });

  @override
  State<OnBoardingPage> createState() {
    return _OnBoardingPageState();
  }
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            left: widget.controller.leftPosition,
            onEnd: () {
              setState(() {
                widget.controller.continueAnimation();
              });
            },
            duration: Duration(seconds: widget.controller.animationDuration),
            curve: Curves.easeInOut,
            child: Image.asset(
              widget.controller.bgConstant,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
          ),
          _mountBackgroundTop(),
          _mountTextTop(context),
          _mountBackgroundBottom(),
          _mountButton(context),
        ],
      ),
    );
  }

  Widget _mountBackgroundTop() {
    return Positioned(
      top: 0,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0, 0),
            end: Alignment(0, 0.8),
            colors: <Color>[
              Color.fromARGB(123, 0, 0, 0),
              Color.fromRGBO(0, 0, 0, 0),
            ],
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: 200,
      ),
    );
  }

  Widget _mountBackgroundBottom() {
    return Positioned(
      bottom: 0,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0, 0),
            end: Alignment(0, 0.8),
            colors: <Color>[
              Color.fromRGBO(0, 0, 0, 0),
              Color.fromARGB(123, 0, 0, 0),
            ],
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: 200,
      ),
    );
  }

  Widget _mountButton(BuildContext context) {
    return Positioned(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.9,
      bottom: MediaQuery.of(context).size.height * 0.05,
      left: MediaQuery.of(context).size.width * 0.05,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              const Color.fromARGB(218, 20, 182, 115)),
        ),
        child: Text(
          'Start Now',
          style: GoogleFonts.roboto(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}

Widget _mountTextTop(BuildContext context) {
  return Positioned(
    top: MediaQuery.of(context).size.height * 0.05,
    left: MediaQuery.of(context).size.width * 0.05,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Rick and Morty App',
          style: GoogleFonts.roboto(
            fontSize: 36,
            color: Colors.white,
          ),
        ),
        Text(
          'by Guilherme Carneiro',
          style: GoogleFonts.roboto(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
