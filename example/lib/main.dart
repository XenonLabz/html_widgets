import 'package:flutter/material.dart';
import 'package:html_widgets/html_widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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

  getcb(text){
    print(text);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            H1(
              text: "Heading 1",
              color: Color(0xFF345628),
              bgColor: Color(0xFF000000),
              padding: 20,
              margin: 20,
              fontWeight: 700,
              onClick: () {
                getcb("Heading 1");
              },
              fontSize: 30,
            ),
             H2(
              text: "Heading 2",
              color: Color(0xFF345628),
              bgColor: Color(0xFF000000),
              padding: 20,
              margin: 20,
              fontWeight: 700,
              onClick: () {
                getcb("Heading 2");
              },
            ), 
            HTMLTable(
              rows:[{'na': "113",'mark': "100" ,'name':"Nantha the GOAT"},{'mark':'100','na': "155",'name':"Popz"},{'name':"Riyaz",'na': "144",'mark':'50'},{'na': "113",'mark': "100" ,'name':"Nantha the GOAT"},{'na': "113",'mark': "100" ,'name':"Nantha the GOAT"},{'na': "113",'mark': "100" ,'name':"Nantha the GOAT"},{'na': "113",'mark': "100" ,'name':"Nantha the GOAT"},{'na': "113",'mark': "100" ,'name':"Nantha the GOAT"},{'na': "113",'mark': "100" ,'name':"Nantha the GOAT"},{'na': "113",'mark': "100" ,'name':"Nantha the GOAT"},{'na': "113",'mark': "100" ,'name':"Nantha the GOAT"},{'na': "113",'mark': "100" ,'name':"Nantha the GOAT"},],
              columns:[{'id':"name", 'label':'name'},{'id':"na", 'label':'nantha the legend'},{'id':"mark", 'label':'Mark'}]
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
