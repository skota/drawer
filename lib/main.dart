import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MaterialApp(
        title: "Home",
        home: Scaffold(
          drawer: MyDrawer(),
          appBar: AppBar(
            title: Text("Home Page"),
            centerTitle: true,
          ),
          body: Center(
            child: Text("Home page"),
          ),
        ),
      ),
    );
  }
}

// details page
class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Text("This is the detail page"),
              RaisedButton(
                color: Colors.blue,
                child: Text("Back to home"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Settings page
class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Text("This is the settings page"),
              RaisedButton(
                color: Colors.blue,
                child: Text("Back to home"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// drawer
class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(children: <Widget>[
        new DrawerHeader(
          // decoration: BoxDecoration(
          //   // color: Colors.blue[300],
          //   borderRadius: BorderRadius.only(
          //     bottomRight: Radius.circular(35),
          //     bottomLeft: Radius.circular(35),
          //   ),
          // ),
          child: Center(
            child: Image.asset("images/smiley.png"),
          ),
        ),

        // help
        // feature request
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.blue,
          ),
          title: Text("Details"),
          onTap: () {
            Navigator.of(context)
              ..pop()
              ..push(
                MaterialPageRoute(builder: (context) => Details()),
              );
          },
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.blue,
          ),
          title: Text("Settings"),
          onTap: () {
            Navigator.of(context)
              ..pop()
              ..push(
                MaterialPageRoute(builder: (context) => Settings()),
              );
          },
        )
      ]),
    );
  }
}
