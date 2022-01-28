import 'package:flutter/material.dart';
import 'package:flutter_count/main_old.dart';

void main(){
  runApp(MyApp());
}
// สร้าง class แยก widget แบบ statelessWidget
class MyApp extends StatelessWidget {
  //const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Color.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomepage(),
    );
  }
}

// สร้าง class แยก widget แบบ statefulWidget
class MyHomepage extends StatefulWidget {
  const MyHomepage({ Key? key }) : super(key: key);

  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {

  int _counter = 0; 
  
  void _incrementCounter(){
      setState(() {
        _counter++;
      });
  }
  void _decrementCounter(){
      setState(() {
        _counter--;
      });
  }
  void _refreshCounter(){
      setState(() {
        _counter =0;
      });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icon,home),
        title: Text("Counter App"),
        actions: <Widget>[
          IconButton(onPressed: (){print("You Press noti");}, 
          icon: Icon(Icons.notification)),
        ],
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("กกปุ่มเพิ่มจำนวน"
                style: TextStyle(fontSize: 24.0, color: Colors.blue),
              ),
              Text(
                '$_counter',
                style: TextStyle(fontSize: 35.0, color: Colors.red),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FloatingActionButton(
                onPressed: _incrementCounter,
                child: Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: _decrementCounter,
                child: Icon(Icons.refresh),
              ),
              FloatingActionButton(
                onPressed: _refreshCounter,
                child: Icon(Icons.remove),
              ),
            ],
          ),
        ),


      ),
      
    );
  }
}