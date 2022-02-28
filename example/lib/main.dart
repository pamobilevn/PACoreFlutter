import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pa_core_flutter/pa_core_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextButton(
              child: Text('rate'),
              onPressed: (){
                PaFunctionUtils().showDialogRating(context, 'co.pamobile.pokemon.cardmaker', 3);
              },
            ),
            TextButton(
              child: Text('policy'),
              onPressed: (){
                PACoreShowDialog.pickYearDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
