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
      title: 'Recipe Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Recipe Apps'),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(width: screenWidth, height: screenHeight, child: Image.asset("images/cook.jpg",width:screenWidth)),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: screenWidth / 8,
                    child: FlatButton(
                      child: TextContents("Lıke", screenWidth / 25),
                      onPressed: () {
                        print("This Like");
                      },
                      color: Colors.blue,
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: screenWidth / 8,
                    child: FlatButton(
                      child: TextContents("Dislike", screenWidth / 25),
                      onPressed: () {
                        print("This Like");
                      },
                      color: Colors.redAccent,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding:  EdgeInsets.all(screenHeight/100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Text("Artichoke with Olive Oil",
                  style: TextStyle(
                   color: Colors.blue,
                   fontSize: screenWidth/20,
                    fontWeight: FontWeight.bold,

                  ),
                 ),
                  Row(
                    children: [
                      TextContents("İnformation",screenWidth/25),
                      Spacer(),
                      TextContents("10 August",screenWidth/25),
          
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(screenHeight/100),
              child: TextContents("When describing the meat cooking process, it should first be started from the meat purchase process. Care should be taken that the meat does not contain nerves. According to the food to be made, the choice of animal should be made. It is necessary to season the meat in extra virgin olive oil. If possible, spices such as thyme and black pepper should be added to olive oil. Cooking meat in its own juice makes it much more delicious. However, if there is no time, a pressure cooker is also preferred. Meat cooked on low heat for about 2 hours is much more delicious and different. In addition, it is important to put a spoonful of butter in it during cooking so that the meat is soft and it is necessary to discard the salt after cooking.",screenWidth),
            ),
          ],
        ),
      ),
    );
  }
}

class TextContents extends StatelessWidget {
  String contetensText;
  double textHeight;

  TextContents(this.contetensText, this.textHeight);

  @override
  Widget build(BuildContext context) {
    return Text(contetensText,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold));
  }
}
