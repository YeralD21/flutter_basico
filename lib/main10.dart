import 'package:flutter/material.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('GridView')),
        body: GridView.count(
          crossAxisCount: 3,
          padding: const EdgeInsets.all(16.0),
          children: List.generate(9, (index) {
            return Container(
              margin: EdgeInsets.all(8.0),
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  'Item $index',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

}