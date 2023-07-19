import 'package:flutter/material.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner:false ,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter New Batch'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.

    });

    _counter++;

    print(_counter);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading:IconButton(onPressed: () {
          print("CLick");

        }, icon: const Icon(Icons.access_time_filled_rounded, size: 45,color: Colors.red,),

        ),
        backgroundColor: Colors.black,

        title: Text(widget.title,style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900, color: Colors.purpleAccent), ),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),


            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: TextField(
              decoration: InputDecoration(
                label: Text("Name"),
                hintText: "Input your name",
                suffix: Icon(Icons.person),
                prefix:  Icon(Icons.phone),
                contentPadding: EdgeInsets.all(20)


              ),
              ),
            ),

            Divider(
              height: 20,
              thickness: 8,

              color: Colors.red,
            ),

            Container(
              color: Colors.red,
              height: 200,
              width: 200,
              child: Center(child: Text("Container", style: TextStyle(color: Colors.white, fontSize: 24),)),

            ),

            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    child: ElevatedButton(onPressed: (){}, child: Text("Button"),

                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      elevation: 0
                    ),
                    ),
                  ),
                ),
                Spacer()
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
