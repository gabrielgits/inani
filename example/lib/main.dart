import 'package:flutter/material.dart';
import 'package:inani/inani.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: const HomePage(),
        
        bottomNavigationBar: SizedBox(
          height: 50,
          child: InaniBottom(
            curve: Curves.decelerate,
            duration: 4,
            child: InaniContainer(
              color: Colors.pink,
              width: 200,
              height: 40,
            ),
          ),
        ),
        
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: InaniTop(
            duration: 3,
            curve: Curves.bounceOut,
            child: InaniContainer(
              color: Colors.pink,
              width: 200,
              height: 40,
            ),
          ),
        ),
        SizedBox(
          height: 400,
          child: InaniCross(
            heightSpace: 50,
            children: [
              InaniContainer(
                color: Colors.red,
                width: 200,
                height: 50,
              ),
              InaniContainer(
                color: Colors.blue,
                width: 200,
                height: 50,
              ),
              InaniContainer(
                color: Colors.green,
                width: 200,
                height: 50,
              ),
              InaniContainer(
                color: Colors.yellow,
                width: 200,
                height: 50,
              )
            ],
          ),
        ),
      ],
    );
  }
}
