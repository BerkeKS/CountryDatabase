import 'dart:html';

import 'package:c_data/main.dart';
import 'package:c_data/africa.dart';
import 'package:c_data/americas.dart';
import 'package:c_data/asia.dart';
import 'package:c_data/europe.dart';
import 'package:c_data/icons.dart';
import 'package:flutter/material.dart';

class TRScreen extends StatefulWidget {
  TRScreen();

  @override
  TRScreenState createState() => TRScreenState();
}

class TRScreenState extends State<TRScreen> {
  int selectedIndex = 0;
  PageController pageController = PageController();

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.yellowAccent[700] as Color,
                Colors.blue[900] as Color,
              ]
            )
          ),
        ),
        foregroundColor: Colors.white,
        title: const Text("Country Database - Turkey"),
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
        ]
      ),
      body: PageView(
        controller: pageController,
        children: [
          Container(
            child: HomeScreen()
          ),
          Container(
            child: Gallery()
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: const Icon(Icons.home), label: "Home Page"),
          BottomNavigationBarItem(icon: const Icon(Icons.photo_camera_rounded), label: "Gallery")
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: onClicked,
      )
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bosphorus.jpg"),
          fit: BoxFit.cover
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(width: 10),
              Container(
                child: Image.asset("assets/images/turkey.jpg"),
                width: 75,
                height: 50,
              ),
              SizedBox(width: 15),
              Text("Turkey", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white))
            ],
          ),
          Container(
            child: Column(
              children: const [
                Text("Region: Eurasia", style: TextStyle(color: Colors.white, fontSize: 25)),
                SizedBox(height: 10),
                Text("Capital: Ankara", style: TextStyle(color: Colors.white, fontSize: 25)),
                SizedBox(height: 10),
                Text("Population: 85.561.976", style: TextStyle(color: Colors.white, fontSize: 25)),
                SizedBox(height: 5),
                Text("")
              ],
            )
          )
        ],
      ),
    );
  }
}

class Gallery extends StatefulWidget {
  Gallery();

  GalleryState createState() => GalleryState();
}

class GalleryState extends State<Gallery> {

  @override
  Widget build (BuildContext context) {
    return GridView.count(
      crossAxisCount: 1,
      scrollDirection: Axis.horizontal,
      children: [
        Card(
          child: Stack(
            children: [
              Container(
                child: Image(image: NetworkImage("https://www.de-cix.net/_Resources/Persistent/4/0/b/d/40bd82682bebe940c4135c16060bf23bef5e54c0/City-Istanbul-1133496387-4000x2094-1200x628.jpg")),
                height: 200,
                width: 300,
              ),
              SizedBox(height: 20),
              Text("Galata Tower - Istanbul")
            ],
          ),     
        ),
        Card(
          child: Stack(
            children: [
              Container(
                child: Image(image: NetworkImage("https://www.buseterim.com.tr/upload/default/2019/11/9/30agustostrkiye680.jpg")),
                height: 200,
                width: 300,
              ),
              SizedBox(height: 20),
              Text("Anıtkabir - Ankara")
            ],
          ),     
        ),
      ],
    );
  }
}