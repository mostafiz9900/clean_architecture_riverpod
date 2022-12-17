import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  static const path = '/about';

  const AboutPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AboutPage'),
      ),
      body: Center(
        child: Text('AboutPage'),
      ),
    );
  }
}
