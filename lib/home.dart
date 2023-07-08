import 'package:flutter/material.dart';
import 'package:flutter_widget_key/samples/future_builder/index.dart';
import 'package:flutter_widget_key/samples/stream_builder/index.dart';
import 'package:flutter_widget_key/samples/widget_key/widget_key.dart';
import 'package:flutter_widget_key/samples/widgets/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('FFF7E9'),
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
            Container(
                child: Column(
              children: <Widget>[
                const Text('APP_TITLE'),
                Text('DATE${getDateForDisplay()}'),
                const Text('APP_DESCRIPTION'),
                Image.asset(
                  'assets/images/yuii.png',
                  width: 50.0,
                  height: 50.0,
                ),
                Image.asset('assets/images/1.png', width: 50.0, height: 50.0),
              ],
            )),
            GestureDetector(
              onTap: () => _onPressed(context, const Widgets()),
              child: Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: HexColor('002E94'),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                elevation: 0,
                child: SizedBox(
                  width: 200,
                  height: 100,
                  child: Center(
                    child: Text(
                      'Widgets',
                      style: TextStyle(
                        color: HexColor('002E94'),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _onPressed(context, const WidgetKey()),
              child: Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: HexColor('002E94'),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                elevation: 0,
                child: SizedBox(
                  width: 200,
                  height: 100,
                  child: Center(
                    child: Text(
                      'Learning widget key',
                      style: TextStyle(
                        color: HexColor('002E94'),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _onPressed(context, const FutureBuilderIndex()),
              child: Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: HexColor('002E94'),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                elevation: 0,
                child: SizedBox(
                  width: 200,
                  height: 100,
                  child: Center(
                    child: Text(
                      'Learning Future Builder',
                      style: TextStyle(
                        color: HexColor('002E94'),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _onPressed(context, const StreamBuilderIndex()),
              child: Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: HexColor('002E94'),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                elevation: 0,
                child: SizedBox(
                  width: 200,
                  height: 100,
                  child: Center(
                    child: Text(
                      'Learning Stream Builder',
                      style: TextStyle(
                        color: HexColor('002E94'),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String getDateForDisplay() {
    DateTime now = DateTime.now();
    var formatter = DateFormat('EEEE dd MMMM yyyy');
    return formatter.format(now);
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
