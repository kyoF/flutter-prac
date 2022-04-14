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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;
  String _type = 'EVEN';

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter % 2 == 0) {
        _type = 'EVEN';
      } else {
        _type = 'ODD';
      }
    });
  }

  int _msg_counter = 0;
  String _edit_msg = '';
  List<String> _show_msg = ['hello world!'];

  Future<void> _InputDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('メッセージ'),
            content: TextField(
                decoration: InputDecoration(hintText: 'いまどうしてる？'),
                onChanged: (value) {
                  setState(() {
                    _edit_msg = value;
                  });
                }),
            actions: <Widget>[
              FlatButton(
                color: Colors.white,
                textColor: Colors.blue,
                child: Text('送る'),
                onPressed: () {
                  setState(() {
                    _msg_counter++;
                    _show_msg.add(_edit_msg);
                  });
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                color: Colors.white,
                textColor: Colors.blue,
                child: Text('戻る'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  List<Widget> _show_all_msg() {
    final List<Widget> _all_msg = <Widget>[];
    for (String msg in _show_msg) {
      _all_msg.add(ListTile(title: Text(msg)));
    }
    return _all_msg;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('You have pushed the button this many times:'),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text('$_type', style: TextStyle(fontSize: 20, color: Colors.red)),
              Text('Total Number of messages:'),
              Text(
                '$_msg_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              LimitedBox(
                  maxHeight: 500, child: ListView(children: _show_all_msg())),
            ],
          ),
        ),
        floatingActionButton: Column(mainAxisSize: MainAxisSize.min, children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              _InputDialog(context);
            },
            tooltip: 'send message',
            child: Icon(Icons.send),
          ),
        ]));
  }
}
