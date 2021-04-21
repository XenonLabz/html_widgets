import 'package:flutter/material.dart';
import 'package:html_widgets/html_widgets.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HTML_WIDGETS Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MyHomePage(title: 'HTML WIDGETS Demo Page'),
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
  getcb(text) {
    print(text);
  }

  bool loading = true;

  countdown() {
    new Timer(const Duration(seconds: 7), () {
      setState(() {
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    countdown();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            H1(
              text: "Heading 1",
              color: Color(0xFF345628),
              bgColor: Color(0xFF000000),
              padding: 20,
              fontWeight: 700,
              onClick: () {
                getcb("Heading 1");
              },
              textAlign: "center",
            ),
            H2(
              text: "Heading 2",
              color: Colors.red,
              padding: 20,
              fontWeight: 700,
              onClick: () {
                getcb("Heading 2 Nanthakumaran is a goat");
              },
            ),
            H3(
              text: "Heading 3",
              isLoading: true,
            ),
            H4(
              text: "heading 4",
              textAlign: "right",
              fontSize: 20,
              margin: 20,
            ),
            H5(
              text: "heading 5",
              textAlign: "center",
              fontSize: 20,
              margin: 30,
              isLoading: loading,
            ),
            H6(
              text: "Heading 6",
            ),
            P(
              text: "Paragraph",
              bgColor: Colors.grey,
              padding: 20,
            ),
            HTMLTable(
              columns: [
                {'id': "name", 'label': 'Name'},
                {'id': "pos", 'label': 'Position'},
                {'id': "hours", 'label': 'Hours'},
                {'id': "salary", 'label': 'Salary'}
              ],
              rows: [
                {
                  'name': "Willamson",
                  'pos': "Manager",
                  'hours': "10",
                  'salary': "100k"
                },
                {
                  'name': "Marshal",
                  'pos': "Team Lead",
                  'hours': "12",
                  'salary': "90k"
                },
                {
                  'name': "Riyazur Razak",
                  'pos': "Sr.Developer",
                  'hours': "14",
                  'salary': "90k"
                },
                {
                  'name': "Popz",
                  'pos': "Sr.Developer",
                  'hours': "14",
                  'salary': "90k"
                },
                {
                  'name': "Ragul",
                  'pos': "Jr.Developer",
                  'hours': "15",
                  'salary': "70k"
                },
              ],
            ),
            HtmlImage(
              src:
                  "https://images.pexels.com/photos/3055008/pexels-photo-3055008.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
              onClick: () {
                print("Image Clicked !!");
              },
              size: "cover",
              margin: 10,
            ),
            HtmlImage(
              src: 'images/cake.jpg',
              margin: 20,
              size: "contain",
            )
          ],
        ),
      ),
    );
  }
}
