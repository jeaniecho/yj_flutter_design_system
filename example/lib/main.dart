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
      title: 'YJ Design System Example',
      theme: ThemeData(
        primaryColor: YJColors.primary,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: YJColors.textPrimary),
          bodyMedium: TextStyle(color: YJColors.textSecondary),
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: YJColors.primary,
          textTheme: ButtonTextTheme.primary,
        ),
        colorScheme: YJColors.colorScheme,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const YJAppBar(
        title: 'Home Page',
        showBackButton: false,
        showCloseButton: false,
        backgroundColor: YJColors.primary,
        titleColor: YJColors.white,
        iconColor: YJColors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            YJInputField(
              controller: _controller1,
              label: 'Input with Border',
              style: YJInputFieldStyle.border,
              color: YJColors.primary,
              onChanged: (value) {
                print('Input with Border: $value');
              },
            ),
            const SizedBox(height: 20),
            YJInputField(
              controller: _controller2,
              label: 'Input without Border',
              style: YJInputFieldStyle.noBorder,
              onChanged: (value) {
                print('Input without Border: $value');
              },
            ),
            const SizedBox(height: 20),
            YJInputField(
              controller: _controller3,
              label: 'Input with Background',
              style: YJInputFieldStyle.background,
              color: YJColors.grey020,
              onChanged: (value) {
                print('Input with Background: $value');
              },
            ),
            const SizedBox(height: 20),
            YJInputField(
              controller: _controller4,
              label: 'Input with Underline',
              style: YJInputFieldStyle.underline,
              color: YJColors.primary,
              onChanged: (value) {
                print('Input with Underline: $value');
              },
            ),
            const SizedBox(height: 40),
            Center(
              child: YJPrimaryButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
                child: const Text('Go to Second Page'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: YJAppBar(
        title: 'Second Page',
        showBackButton: true,
        showCloseButton: true,
        backgroundColor: YJColors.primary,
        titleColor: YJColors.secondary,
        iconColor: YJColors.secondary,
      ),
      body: Center(
        child: Text('This is the second page'),
      ),
    );
  }
}
