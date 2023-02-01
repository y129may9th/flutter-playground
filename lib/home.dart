import 'package:flutter/material.dart';
import 'package:flutter_widget_key/samples/widget_key.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('FFE7CC'),
      appBar: AppBar(
        title: Text(
          'Flutter Play Ground',
          style: TextStyle(
            color: HexColor('002E94'),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('Learning widget key'),
              onPressed: () => _onPressed(context, const WidgetKey()),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _onPressed(BuildContext context, Widget widget) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
  );
}
