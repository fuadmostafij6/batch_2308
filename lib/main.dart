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
      debugShowCheckedModeBanner: false,
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
      home: const HomePage(
        title: "Hello Friends",
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  final String? title;
  const HomePage({Key? key, this.title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool value =false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
        elevation: 0,
        centerTitle: true,

      ),
        body:

        SafeArea(
          
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      color: Colors.green,
                      height: 500,
                      width: 500,
                    ),


                    GestureDetector(
                      onTap: (){
                        print("OnTap");

                      },
                      onDoubleTap: (){
                        print("on Double Tap");
                      },
                      child: Container(

                        height: 250,
                        width: 200,
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle

                        ),
                        child: Center(child: Text("Click")),
                      ),
                    ),

                    // Expanded(
                    //   child: Container(
                    //     color: Colors.deepPurple,
                    //     height: 200,
                    //     width: 500,
                    //   ),
                    // ),
                  ],
                ),
                Text("Flag"),

                ListTile(

                  title: value? Text("Faruk vai"):Text("Sagor vai"),
                  subtitle: Text(value.toString()),
                  trailing: Switch(
                    onChanged: (bool values) {

                    value = !value;

                    print(value);
                    setState(() {

                    });
                  }, value: value,),
                  leading: Image.network("https://w7.pngwing.com/pngs/481/915/png-transparent-computer-icons-user-avatar-woman-avatar-computer-business-conversation.png"),
                ),

                Checkbox(value: value, onChanged: (v){
                  value = !value;
                  setState(() {

                  });
                }),

                CircularProgressIndicator(),
                LinearProgressIndicator(),


                
                ExpansionTile(

                  title: Text("Click"), subtitle: Text("Subtitle"),
                
                children: [
                  Text("Data")
                ],
                ),

                SizedBox(height: 50,),
              ],
            ),
          ),
        ));
  }
}
