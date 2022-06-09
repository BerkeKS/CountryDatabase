import 'dart:html';

import 'package:c_data/icons.dart';
import 'package:flutter/material.dart';

import 'africa.dart';
import 'americas.dart';
import 'asia.dart';
import 'europe.dart';


void main() {
  runApp(const CountriesWeb());
}

class CountriesWeb extends StatelessWidget {
  const CountriesWeb();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Database of Countries",
      routes: {
        '/': (context) =>  MainScreen(),
        '/africa': (context) => AfricaScreen(),
        '/americas': (context) => AmericasScreen(),
        '/asia': (context) => AsiaScreen(),
        '/europe': (context) => EuropeScreen(),
      },
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  List<Color> colorList = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow
  ];
  List<Alignment> alignmentList = [
    Alignment.bottomLeft,
    Alignment.bottomRight,
    Alignment.topRight,
    Alignment.topLeft,
  ];
  int index = 0;
  Color bottomColor = Colors.red;
  Color topColor = Colors.yellow;
  Alignment begin = Alignment.bottomLeft;
  Alignment end = Alignment.topRight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue[900],
        title: const Text("Country Database - Main Page")
      ),
      body: Stack(
      children: [
        AnimatedContainer(
          duration: Duration(seconds: 2),
          onEnd: () {
            setState(() {
              index = index + 1;
              // animate the color
              bottomColor = colorList[index % colorList.length];
              topColor = colorList[(index + 1) % colorList.length];

              //// animate the alignment
              // begin = alignmentList[index % alignmentList.length];
              // end = alignmentList[(index + 2) % alignmentList.length];
            });
          },
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: begin, end: end, colors: [bottomColor, topColor])),
          ),
          Positioned.fill(
            child: IconButton(
              icon: Icon(Icons.play_arrow),
              onPressed: () {
                setState(() {
                  bottomColor = Colors.blue;
                });
              },
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 200,),
              Text("Welcome to the website of the database of the countries!", style: TextStyle(color: Colors.limeAccent[700], fontSize: 30)),
              const SizedBox(height: 15,),
              const Text("Please write the country you want to enter or select the continent below:", style: TextStyle(color: Colors.white, fontSize: 17)),
              const SizedBox(height: 5,),
              const TextField(),
              const SizedBox(height: 5,),
              const ConButtons()
            ]
          )
        ],
      )
    );
  }
}

class ConButtons extends StatefulWidget {
  const ConButtons();

  @override
  ConState createState() => ConState();

}

class ConState extends State<ConButtons> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          const SizedBox(width: 465),
          TextButton.icon(
            icon: const Icon(ContinentIcons.globe_africa),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AfricaScreen(),));
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.white, 
              primary: Colors.green[600]
            ),
            label: const Text("Africa"),
          ),
          const SizedBox(width: 10),
          TextButton.icon(
            icon: const Icon(ContinentIcons.globe_americas),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AmericasScreen(),));
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.white, 
              primary: Colors.red[700]
            ),
            label: const Text("Americas"),
          ),
          const SizedBox(width: 10),
          TextButton.icon(
            icon: const Icon(ContinentIcons.globe_asia),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AsiaScreen(),));
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.white, 
              primary: Colors.yellow[600]
            ),
            label: const Text("Asia/Ocenia"),
          ),
          const SizedBox(width: 10),
          TextButton.icon(
            icon: const Icon(ContinentIcons.globe_europe),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => EuropeScreen(),));
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.white, 
              primary: Colors.lightBlue[600],
              // minimumSize: const Size(25.0, 20.0),
            ),
            label: const Text("Europe"),
          ),
        ],
      )
    );
  }
}
