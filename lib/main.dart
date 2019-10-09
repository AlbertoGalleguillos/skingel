import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
  String firstText =
      'Fabricamos productos de la más alta calidad y creamos lo que no existe';
  String secondText =
      'En Skingel tenemos la convicción de que la única forma de hacer un trabajo es hacerlo bien. Por eso contamos con un equipo integrado por los mejores profesionales. Como resultado, ponemos a su disposición nuestra creatividad y experiencia para brindarle productos de excelencia y un servicio de clase mundial.  ';

  //bool isMobile = Plataform.

  static bool isWeb = true;
  static bool isOpen = true;
  double firstScale = isWeb ? 2 : 4;
  double secondScale = isWeb ? 1 : 2; //firstScale / 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            Image.network(
                'http://s3.amazonaws.com/storage.wobiz.com/26/26014/images/Original/1476565566_837782f4e67b4061bc51450996513801.26014.jpeg'),
            Padding(
              padding: const EdgeInsets.all(36.0),
              child: Text(
                firstText,
                textScaleFactor: firstScale,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Text(secondText,
                  textScaleFactor: secondScale, textAlign: TextAlign.center),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(36.0),
              child: Text(
                firstText,
                textScaleFactor: firstScale,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Text(secondText,
                  textScaleFactor: secondScale, textAlign: TextAlign.center),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(36.0),
              child: Text(
                firstText,
                textScaleFactor: firstScale,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Text(secondText,
                  textScaleFactor: secondScale, textAlign: TextAlign.center),
            ),
            Padding(
              padding: EdgeInsets.all(40),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('Actions'),
        tooltip: 'Increment',
        child: Icon(Icons.message),
      ),
    );
  }

  //TODO: Implement SliverAppBar
  /*SliverAppBar appBar() {
    //     App bar with floating: false, pinned: true, snap: false:
    return SliverAppBar(
        expandedHeight: 150.0,
        flexibleSpace: const FlexibleSpaceBar(
          title: Text('Available seats'),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_circle),
            tooltip: 'Add new entry',
            onPressed: () { /* ... */ },
          ),
        ]
    );
  }*/
}
