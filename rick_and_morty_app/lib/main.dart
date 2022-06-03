import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  bool isAnimationEnded;
  MyHomePage({
    super.key,
    this.isAnimationEnded = false,
    required this.title,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isAnimationEnded = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            onEnd: () {
              setState(() {
                isAnimationEnded = !isAnimationEnded;
              });
            },
            left: isAnimationEnded ? 0 : -1040,
            duration: const Duration(seconds: 15),
            curve: Curves.easeInOut,
            child: GestureDetector(
              onDoubleTap: () {
                setState(() {
                  isAnimationEnded = !isAnimationEnded;
                });
              },
              child: Image.asset(
                'lib/assets/images/bgHome.jpg',
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
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
          ),
          Positioned(
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
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.05,
            left: MediaQuery.of(context).size.width * 0.05,
            child: Column(
              children: const [
                Text(
                  'Rick and Morty App',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'by Guilherme Carneiro',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Positioned(
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
              child: const Text(
                'Start Now',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 28,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
