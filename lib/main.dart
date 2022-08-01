import 'package:flutter/material.dart';
import 'dart:math';

int z = 0;
void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Rock Paper Scissors'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _start() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Random x = new Random();
    int y = x.nextInt(3) + 1;
    var w = result(z, y);
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            Image(
              image: AssetImage('images/$y.png'),
            ),
            SizedBox(height: 150),
            Container(
              width: double.maxFinite,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  '$w',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ),
            SizedBox(height: 150),
            Row(
              children: [
                IconButton(
                  icon: Image.asset('images/1.png'),
                  iconSize: 75,
                  onPressed: () {
                    Generator(1);
                    z = 1;
                    _start();
                  },
                ),
                SizedBox(
                  width: 55,
                ),
                IconButton(
                  icon: Image.asset('images/2.png'),
                  iconSize: 75,
                  onPressed: () {
                    Generator(2);
                    z = 2;
                    _start();
                  },
                ),
                SizedBox(
                  width: 55,
                ),
                IconButton(
                  icon: Image.asset('images/3.png'),
                  iconSize: 75,
                  onPressed: () {
                    Generator(3);
                    z = 3;
                    _start();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String result(int z, int y) {
    if (z == y)
      return 'Draw!';
    else if ((z == 1 && y == 2) || (z == 2 && y == 3) || (z == 3 && y == 1))
      return 'You Lost!';
    else if (z == 0)
      return 'Start!';
    else
      return 'You Won!';
  }

  void Generator(int y) {
    Row(
      children: [Image(image: AssetImage('images/$y.png'))],
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Random x = new Random();
    int y = x.nextInt(3) + 1;
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppBar(
                title: Text('Rock Paper Scissors'),
                centerTitle: true,
              ),
              SizedBox(height: 100),
              Image(
                image: AssetImage('images/$y.png'),
              ),
              SizedBox(height: 150),
              Container(
                width: double.maxFinite,
                child: TextButton(
                  onPressed: () {
                    Generator(y);
                  },
                  child: Text(
                    'Start!',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 150),
              Row(
                children: [
                  IconButton(
                    icon: Image.asset('images/1.png'),
                    iconSize: 75,
                    onPressed: () {
                      Generator(1);
                    },
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  IconButton(
                    icon: Image.asset('images/2.png'),
                    iconSize: 75,
                    onPressed: () {
                      Generator(2);
                    },
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  IconButton(
                    icon: Image.asset('images/3.png'),
                    iconSize: 75,
                    onPressed: () {
                      Generator(3);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void Generator(int y) {
    Row(
      children: [Image(image: AssetImage('images/$y.png'))],
    );
  }
}
