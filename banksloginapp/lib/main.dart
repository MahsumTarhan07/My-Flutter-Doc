import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Banks Login',
      home: const MyHomePage(title: 'Banks Login'),
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
  @override
  Widget build(BuildContext context) {
    var screeninformation = MediaQuery.of(context);
    final double screenWidth = screeninformation.size.width;
    final double screenHeight = screeninformation.size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("İmages/banks.png"),
              Padding(
                padding: EdgeInsets.all(screenHeight / 50),
                child: SizedBox(
                  width: screenWidth / 10,
                  height: screenHeight / 20,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(screenHeight / 210),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "User Name",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(screenHeight / 190),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(screenWidth / 35),
                child: SizedBox(
                  width: screenWidth / 1.1,
                  height: screenHeight / 10,
                  child: ElevatedButton(
                    child: Padding(
                      padding: EdgeInsets.all(screenHeight / 300),
                      child: Text(
                        'Submit',
                        style: TextStyle(fontSize: screenHeight / 35),
                      ),
                    ),
                    onPressed: () {
                      print("Login done");
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        padding: MaterialStateProperty.all(EdgeInsets.all(25)),
                        textStyle: MaterialStateProperty.all(
                            TextStyle(fontSize: 25, color: Colors.black))),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  print("Onclik Help");
                },
                child: Padding(
                  padding:  EdgeInsets.all(0.8),
                  child: Text(
                    "HELP",
                    style: TextStyle(color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,


                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
