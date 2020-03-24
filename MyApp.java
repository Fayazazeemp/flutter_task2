import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: ''
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.white,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(5, 5, 300, 5),
            child: Icon(
              Icons.arrow_back,
              color: Colors.grey,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {},
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        "https://cdn.vox-cdn.com/thumbor/s7p28ImHZCqD9lmCwjGahP3NLFk=/0x0:1907x812/920x613/filters:focal(668x269:972x573):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/63217033/dwanGYh.0.png"),
                  ),
                  Positioned(
                      top: -10,
                      right: -5,
                      child: CircleAvatar(
                        radius: 10,
                        child: FittedBox(child: Text('1'),
                          fit: BoxFit.scaleDown,
                        ),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
            height: 140.0,
            width: 300.0,
            color: Colors.grey,
            child: Text('one'),
          ),
          Container(
            height: 140.0,
            width: 300.0,
            color: Colors.grey,
            child: Text('two'),
          ),
          Container(
            height: 140.0,
            width: 300.0,
            color: Colors.grey,
            child: Text('three'),
          ),
        ],
        color : Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}