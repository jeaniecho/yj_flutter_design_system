import 'package:flutter/material.dart';
import 'package:yj_flutter_design_system/yj_flutter_design_system.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YJ Flutter Design System Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YJ Flutter Design System Example'),
      ),
      body: Padding(
        padding: YJEdgeInsets.all12,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              YJButton(
                onPressed: () {
                  print('YJButton pressed');
                },
                color: Colors.blue,
                textColor: Colors.white,
                borderRadius: 12.0,
                padding: YJEdgeInsets.all8,
                child: const Text('Press Me'),
              ),
              const SizedBox(height: 20),
              Container(
                color: Colors.red,
                padding: YJEdgeInsets.all8,
                child: const Text('With Small Padding'),
              ),
              const SizedBox(height: 20),
              Container(
                color: Colors.green,
                padding: YJEdgeInsets.all24,
                child: const Text('With Extra Large Padding'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
