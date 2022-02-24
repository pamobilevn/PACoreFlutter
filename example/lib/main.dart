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
                onPressed: () {
                  PACoreShowDialog.policyDialog(context,
                      title: "Policy", policyAcceptTime: "", funcOk: () {
                    Navigator.pop(context);
                  });
                },
                child: Text("Policy")),
            TextButton(
                onPressed: () {
                  PACoreShowDialog.exitAppDialog(
                    context,
                    isPremium: false,
                    adsWidget:
                        Container(color: Colors.blue, height: 200, width: 200),
                  );
                },
                child: Text("Exit dialog")),
            TextButton(
              onPressed: () => PACoreShowDialog.customAlertDialog(context,
                  title: "custom alert",
                  content: Text("alert"),
                  rightButton: TextButton(onPressed: null, child: Text("OK")),
                  leftButton: TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text("Cancel"))),
              child: Text("custom alert dialog"),
            ),
            TextButton(
              onPressed: () => PACoreShowDialog.mainAlertDialog(context,
                  title: "main alert",
                  content: Text("alert"),
                  funcOk: () => Navigator.pop(context),
                  funcCancel: () => print("exit")),
              child: Text("main alert dialog"),
            ),
            TextButton(
              onPressed: () => PACoreShowDialog.askPremiumDialog(context,
                  funcPurchase: () => print("purchase")),
              child: Text("ask premium"),
            ),
            TextButton(
              onPressed: () => PACoreShowDialog.inputNameDialog(
                context,
                title: 'File name',
                isPremium: false,
                showAds: () => print('show ads'),
                currentValue: '',
                isNumber: false,
                multiLine: false,
              ),
              child: Text("Input name"),
            ),
            TextButton(
              onPressed: () => PACoreShowDialog.inputDialog(
                context,
                title: "input",
                textMaxLength: 40,
                isNumber: false,
                multiLine: true,
                currentValue: '',
              ),
              child: Text('Input'),
            ),
            TextButton(
              onPressed: () =>
                  PACoreShowDialog.pickYearDialog(context, policyText: "aaaa"),
              child: Text('pick year'),
            ),
          ],
        ),
      ),
    );
  }
}
