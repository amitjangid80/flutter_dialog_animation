import 'package:flutter/material.dart';
import 'package:flutterdialoganimation/animations/animations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dialog Animation',
      theme: ThemeData(primarySwatch: Colors.blue),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () => _openDialogBoxFromLeft(),
              child: Text('Open Dialog From Left', style: Theme.of(context).textTheme.title),
            ),
            RaisedButton(
              onPressed: () => _openDialogBoxFromRight(),
              child: Text('Open Dialog From Right', style: Theme.of(context).textTheme.title),
            ),
            RaisedButton(
              onPressed: () => _openDialogBoxFromTop(),
              child: Text('Open Dialog From Top', style: Theme.of(context).textTheme.title),
            ),
            RaisedButton(
              onPressed: () => _openDialogBoxFromBottom(),
              child: Text('Open Dialog From Bottom', style: Theme.of(context).textTheme.title),
            ),
            RaisedButton(
              onPressed: () => _openDialogBoxGrow(),
              child: Text('Open Dialog Grow Animation', style: Theme.of(context).textTheme.title),
            ),
            RaisedButton(
              onPressed: () => _openDialogBoxShrink(),
              child: Text('Open Dialog Shrink Animation', style: Theme.of(context).textTheme.title),
            ),
          ],
        ),
      ),
    );
  }

  _openDialogBoxFromLeft() {
    return showGeneralDialog(
      context: context,
      barrierLabel: '',
      // this is mandatory so we are passing it empty string
      barrierDismissible: true,
      transitionDuration: Duration(milliseconds: 300),
      transitionBuilder: (context, _animation, _secondaryAnimation, _child) {
        return Animations.fromLeft(_animation, _secondaryAnimation, _child);
      },
      pageBuilder: (_animation, _secondaryAnimation, _child) {
        return AlertDialog(
          title: Text('Title', style: Theme.of(context).textTheme.display1),
          content: Container(
            margin: EdgeInsets.only(top: 10),
            child: Text('Animation example from Right To Left.', style: Theme.of(context).textTheme.subtitle),
          ),
          actions: <Widget>[
            RaisedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Okay', style: Theme.of(context).textTheme.title),
            ),
          ],
        );
      },
    );
  }

  _openDialogBoxFromRight() {
    return showGeneralDialog(
      context: context,
      barrierLabel: '',
      // this is mandatory so we are passing it empty string
      barrierDismissible: true,
      transitionDuration: Duration(milliseconds: 300),
      transitionBuilder: (context, _animation, _secondaryAnimation, _child) {
        return Animations.fromRight(_animation, _secondaryAnimation, _child);
      },
      pageBuilder: (_animation, _secondaryAnimation, _child) {
        return AlertDialog(
          title: Text('Title', style: Theme.of(context).textTheme.display1),
          content: Container(
            margin: EdgeInsets.only(top: 10),
            child: Text('Animation example from Left to Right.', style: Theme.of(context).textTheme.subtitle),
          ),
          actions: <Widget>[
            RaisedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Okay', style: Theme.of(context).textTheme.title),
            ),
          ],
        );
      },
    );
  }

  _openDialogBoxFromTop() {
    return showGeneralDialog(
      context: context,
      barrierLabel: '',
      // this is mandatory so we are passing it empty string
      barrierDismissible: true,
      transitionDuration: Duration(milliseconds: 300),
      transitionBuilder: (context, _animation, _secondaryAnimation, _child) {
        return Animations.fromTop(_animation, _secondaryAnimation, _child);
      },
      pageBuilder: (_animation, _secondaryAnimation, _child) {
        return AlertDialog(
          title: Text('Title', style: Theme.of(context).textTheme.display1),
          content: Container(
            margin: EdgeInsets.only(top: 10),
            child: Text('Animation example from Top to Bottom.', style: Theme.of(context).textTheme.subtitle),
          ),
          actions: <Widget>[
            RaisedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Okay', style: Theme.of(context).textTheme.title),
            ),
          ],
        );
      },
    );
  }

  _openDialogBoxFromBottom() {
    return showGeneralDialog(
      context: context,
      barrierLabel: '',
      // this is mandatory so we are passing it empty string
      barrierDismissible: true,
      transitionDuration: Duration(milliseconds: 300),
      transitionBuilder: (context, _animation, _secondaryAnimation, _child) {
        return Animations.fromBottom(_animation, _secondaryAnimation, _child);
      },
      pageBuilder: (_animation, _secondaryAnimation, _child) {
        return AlertDialog(
          title: Text('Title', style: Theme.of(context).textTheme.display1),
          content: Container(
            margin: EdgeInsets.only(top: 10),
            child: Text('Animation example from Bottom to Top.', style: Theme.of(context).textTheme.subtitle),
          ),
          actions: <Widget>[
            RaisedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Okay', style: Theme.of(context).textTheme.title),
            ),
          ],
        );
      },
    );
  }

  _openDialogBoxGrow() {
    return showGeneralDialog(
      context: context,
      barrierLabel: '',
      // this is mandatory so we are passing it empty string
      barrierDismissible: true,
      transitionDuration: Duration(milliseconds: 300),
      transitionBuilder: (context, _animation, _secondaryAnimation, _child) {
        return Animations.grow(_animation, _secondaryAnimation, _child);
      },
      pageBuilder: (_animation, _secondaryAnimation, _child) {
        return AlertDialog(
          title: Text('Title', style: Theme.of(context).textTheme.display1),
          content: Container(
            margin: EdgeInsets.only(top: 10),
            child: Text('Animation example Grow.', style: Theme.of(context).textTheme.subtitle),
          ),
          actions: <Widget>[
            RaisedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Okay', style: Theme.of(context).textTheme.title),
            ),
          ],
        );
      },
    );
  }

  _openDialogBoxShrink() {
    return showGeneralDialog(
      context: context,
      barrierLabel: '',
      // this is mandatory so we are passing it empty string
      barrierDismissible: true,
      transitionDuration: Duration(milliseconds: 300),
      transitionBuilder: (context, _animation, _secondaryAnimation, _child) {
        return Animations.shrink(_animation, _secondaryAnimation, _child);
      },
      pageBuilder: (_animation, _secondaryAnimation, _child) {
        return AlertDialog(
          title: Text('Title', style: Theme.of(context).textTheme.display1),
          content: Container(
            margin: EdgeInsets.only(top: 10),
            child: Text('Animation example Shrink.', style: Theme.of(context).textTheme.subtitle),
          ),
          actions: <Widget>[
            RaisedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Okay', style: Theme.of(context).textTheme.title),
            ),
          ],
        );
      },
    );
  }
}
