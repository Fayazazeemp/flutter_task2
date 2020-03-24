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
                        backgroundColor: Colors.pink,
                        radius: 10,
                        child: FittedBox(child: Text('4'),
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
            child: Text(
                'Hello Brian!',
            textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 27.0,
              ),
            ),
            margin: EdgeInsets.fromLTRB(50, 0, 200, 0),
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(60, 0, 229, 20),
                    child: Text(
                        'Today',
                      style: TextStyle(
                        fontSize: 16.00,
                        color: Colors.grey,
                      ),
                    ),
                  ),

                  Container(
                    child: Icon(
                      Icons.mode_edit,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(60, 0, 0, 0),
                    child: Text(
                      'Overall',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19.00,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  Container(
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
            height: 145.0,
            width: 400.0,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
            height: 145.0,
            width: 400.0,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
            height: 145.0,
            width: 400.0,

            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}