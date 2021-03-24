import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planets',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  var images = [
    Image.network(
        'https://freepngimg.com/thumb/universe/29137-3-jupiter-transparent-image-thumb.png'),
    Image.network(
        'https://p.kindpng.com/picc/s/32-326793_transparent-saturn-planet-png-saturn-hd-photo-png.png'),
    Image.network(
        'https://freepngimg.com/thumb/universe/28648-6-venus-transparent-background-thumb.png')
  ];
  var texts = [
    Text(
      'This is Jupiter',
    ),
    Text(
      'This is Saturn',
    ),
    Text(
      'This is Venus',
    )
  ];
  int indexImage = 0;
  int indexText = 0;

  Widget build(BuildContext context) {
    Text descriptionText;
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Planets'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              descriptionText = texts[indexText],
              SizedBox(
                height: 20,
              ),
              images[indexImage],
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          indexImage = 0;
                          indexText = 0;
                        });
                      },
                      child: Text('Jupiter')),
                  SizedBox(
                    width: 35,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          indexImage = 1;
                          indexText = 1;
                        });
                      },
                      child: Text('Saturn')),
                  SizedBox(
                    width: 35,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          indexImage = 2;
                          indexText = 2;
                        });
                      },
                      child: Text('Venus')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 'https://freepngimg.com/thumb/earth/7-2-earth-png-pic-thumb.png' //
