import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'İnside Apps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'İnside Apps'),
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
    var screeninfo = MediaQuery.of(context);
    final double screenHeight = screeninfo.size.height;
    final double screenWidth = screeninfo.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: screenWidth / 90, bottom: screenWidth / 90),
            child: SizedBox(
                width: screenWidth / 1,
                child: Image.asset(
                  "images/elonmusk.jpg",
                )),
          ),
          Text(
            "Elon Musk",
            style: TextStyle(
              fontSize: screenWidth / 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "You have to be ambitious enough to be able to do something. Otherwise you'll just wear yourself out.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: screenWidth / 20,
                color: Colors.black,
              ),
            ),
          ),
          Spacer(),
          ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: screenWidth / 3,
                  height: screenHeight / 15,
                  child: Text(
                    "İnside Click",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.blue,
                    ),
                  ),
                ),
              )),
          Spacer(),
        ],
      ),
    );
  }
}
