import 'dart:html';

import 'package:c_data/main.dart';
import 'package:c_data/africa.dart';
import 'package:c_data/americas.dart';
import 'package:c_data/asia.dart';
import 'package:c_data/europe.dart';
import 'package:c_data/icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ALScreen extends StatelessWidget {
  const ALScreen();

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
        title: const Text("Country Database - Albania"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen(),));
            }, 
            icon: const Icon(Icons.home_filled)
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AfricaScreen(),));
            }, 
            icon: const Icon(ContinentIcons.globe_africa)
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AmericasScreen(),));
            }, 
            icon: const Icon(ContinentIcons.globe_americas),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AsiaScreen(),));
            }, 
            icon: const Icon(ContinentIcons.globe_asia),
          ),
        ],
      ),
      backgroundColor: Colors.lightBlue[600],
    );
  }
}