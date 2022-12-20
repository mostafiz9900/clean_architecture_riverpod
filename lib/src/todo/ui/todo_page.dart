import 'package:flutter/material.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({Key? key}) : super(key: key);
  static const path = '/todo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TodoPage'),
      ),
      body: Center(
        child: Text('TodoPage'),
      ),
    );
  }
}
