// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              height: 50,
              child: Image.asset(
                "logo.png",
              ),
            ),
            Container(
              height: 1000,
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              padding: EdgeInsets.only(top: 100),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                image: DecorationImage(
                    repeat: ImageRepeat.repeat,
                    image: AssetImage(
                      "assets/background_image_with_dot.png",
                    )),
              ),
              child: Stack(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset("red_asset.png")),
                  Align(
                      alignment: Alignment.topRight,
                      child: Image.asset("blue_asset.png")),
                  Padding(
                    padding: const EdgeInsets.only(left: 250, right: 250),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Text(
                            "A Social Media Agency with a Twist",
                            style: TextStyle(
                                height: 1,
                                letterSpacing: -5,
                                fontFamily: "Brockmann",
                                fontSize: 104,
                                fontWeight: FontWeight.w500),
                            softWrap: true,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Dhaasu Tagline for our SMMA. Something Exctiting.",
                          style: TextStyle(
                              fontFamily: "Brockmann",
                              fontSize: 24,
                              wordSpacing: 0,
                              fontWeight: FontWeight.w500),
                          softWrap: true,
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          height: 66,
                          width: 188,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "See Plans",
                              style: TextStyle(
                                  fontFamily: "Brockmann", color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
