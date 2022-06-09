import 'dart:html';
import 'dart:ui';

import 'package:c_data/main.dart';
import 'package:c_data/africa.dart';
import 'package:c_data/americas.dart';
import 'package:c_data/asia.dart';
import 'package:c_data/icons.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:c_data/Europe/albania.dart';
import 'package:c_data/Europe/turkey.dart';


int counter = 0;

class EuropeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
        title: const Text("Country Database - Europe"),
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
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,              
              colors: [
                Colors.blue[200] as Color,
                Colors.blue[800] as Color,                
              ]
            )
          ),
          child: const EUScreen(),
        ),
      )
    );
  }
}

class EUScreen extends StatefulWidget{
  const EUScreen();

  @override
  Countries createState() => Countries();
}

class Countries extends State<EUScreen> {

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5,
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 5.0,
      scrollDirection: Axis.vertical,
      children: [
        // ignore: prefer_const_constructors
        CountryCard(counter: 1, icon: "🇦🇽", ccode: "ALA", country: "Åland Islands", caInfo: "Mariehamn", coInfo: "Europe", poInfo: "29.013", link: const ALScreen()),
        CountryCard(counter: 2, icon: "🇦🇱", ccode: "ALB", country: "Albania", caInfo: "Tirana", coInfo: "Europe", poInfo: "2.866.374", link: const ALScreen()),
        CountryCard(counter: 3, icon: "🇦🇩", ccode: "AND", country: "Andorra", caInfo: "Andorra la Vella", coInfo: "Europe", poInfo: "77.463", link: const ALScreen()),
        CountryCard(counter: 4, icon: "🇦🇲", ccode: "ARM", country: "Armenia", caInfo: "Yerevan", coInfo: "Eurasia", poInfo: "2.971.966", link: const ALScreen()),
        CountryCard(counter: 5, icon: "🇦🇹", ccode: "AUT", country: "Austria", caInfo: "Vienna", coInfo: "Europe", poInfo: "9.066.710", link: const ALScreen()),
        CountryCard(counter: 6, icon: "🇦🇿", ccode: "AZE", country: "Azerbaijan", caInfo: "Baku", coInfo: "Eurasia", poInfo: "10.300.205", link: const ALScreen()),
        CountryCard(counter: 7, icon: "🇧🇾", ccode: "BLR", country: "Belarus", caInfo: "Minsk", coInfo: "Europe", poInfo: "9.432.800", link: const ALScreen()),
        CountryCard(counter: 8, icon: "🇧🇪", ccode: "BEL", country: "Belgium", caInfo: "Brussels", coInfo: "Europe", poInfo: "11.668.278", link: const ALScreen()),
        CountryCard(counter: 9, icon: "🇧🇦", ccode: "BIH", country: "Bosnia & Herzegovina", caInfo: "Sarajevo", coInfo: "Europe", poInfo: "3.249.317", link: const ALScreen()),
        CountryCard(counter: 10, icon: "🇧🇬", ccode: "BGR", country: "Bulgaria", caInfo: "Sofia", coInfo: "Europe", poInfo: "6.844.597", link: const ALScreen()),
        CountryCard(counter: 11, icon: "🇭🇷", ccode: "HRV", country: "Croatia", caInfo: "Zagreb", coInfo: "Europe", poInfo: "4.059.286", link: const ALScreen()),
        CountryCard(counter: 12, icon: "🇨🇾", ccode: "CYP", country: "Cyprus", caInfo: "Nicosia", coInfo: "Eurasia", poInfo: "1.223.387", link: const ALScreen()),
        CountryCard(counter: 13, icon: "🇨🇿", ccode: "CZE", country: "Czechia", caInfo: "Prague", coInfo: "Europe", poInfo: "10.736.784", link: const ALScreen()),
        CountryCard(counter: 14, icon: "🇩🇰", ccode: "DNK", country: "Denmark", caInfo: "Copenhagen", coInfo: "Europe", poInfo: "5.834.950", link: const ALScreen()),
        CountryCard(counter: 15, icon: "🏴󠁧󠁢󠁥󠁮󠁧󠁿", ccode: "GBR", country: "England", caInfo: "London", coInfo: "Europe", poInfo: "56.550.138", link: const ALScreen()),
        CountryCard(counter: 16, icon: "🇪🇪", ccode: "EST", country: "Estonia", caInfo: "Tallinn", coInfo: "Europe", poInfo: "1.321.910", link: const ALScreen()),
        CountryCard(counter: 17, icon: "🇫🇴", ccode: "FRO", country: "Faroe Islands", caInfo: "Tórshavn", coInfo: "Europe", poInfo: "49.233", link: const ALScreen()),
        CountryCard(counter: 18, icon: "🇫🇮", ccode: "FIN", country: "Finland", caInfo: "Helsinki", coInfo: "Europe", poInfo: "5.554.960", link: const ALScreen()),
        CountryCard(counter: 19, icon: "🇫🇷", ccode: "FRA", country: "France", caInfo: "Paris", coInfo: "Europe", poInfo: "65.584.518", link: ALScreen()),
        CountryCard(counter: 20, icon: "🇬🇪", ccode: "GEO", country: "Georgia", caInfo: "Tbilisi", coInfo: "Eurasia", poInfo: "3.968.738", link: const ALScreen()),
        CountryCard(counter: 21, icon: "🇩🇪", ccode: "DEU", country: "Germany", caInfo: "Berlin", coInfo: "Europe", poInfo: "83.883.596", link: ALScreen()),
        CountryCard(counter: 22, icon: "🇬🇮", ccode: "GIB", country: "Gibraltar", caInfo: "Gibraltar", coInfo: "Europe", poInfo: "33.704", link: ALScreen()),
        CountryCard(counter: 23, icon: "🇬🇷", ccode: "GRC", country: "Greece", caInfo: "Athens", coInfo: "Europe", poInfo: "10.316.637", link: const ALScreen()),
        CountryCard(counter: 24, icon: "🇬🇬", ccode: "GGY", country: "Guernsey", caInfo: "St. Peter Port", coInfo: "Europe", poInfo: "63.448", link: const ALScreen()),
        CountryCard(counter: 25, icon: "🇭🇺", ccode: "HUN", country: "Hungary", caInfo: "Budapest", coInfo: "Europe", poInfo: "9.606.259", link: const ALScreen()),
        CountryCard(counter: 26, icon: "🇮🇸", ccode: "ISL", country: "Iceland", caInfo: "Reykjavik", coInfo: "Europe", poInfo: "345.393", link: const ALScreen()),
        CountryCard(counter: 27, icon: "🇮🇪", ccode: "IRL", country: "Ireland", caInfo: "Dublin", coInfo: "Europe", poInfo: "5.020.199", link: const ALScreen()),
        CountryCard(counter: 28, icon: "🇮🇲", ccode: "IMN", country: "Isle of Man", caInfo: "Douglas", coInfo: "Europe", poInfo: "85.732", link: const ALScreen()),
        CountryCard(counter: 29, icon: "🇮🇹", ccode: "ITA", country: "Italy", caInfo: "Rome", coInfo: "Europe", poInfo: "60.262.770", link: ALScreen()),
        CountryCard(counter: 30, icon: "🇯🇪", ccode: "JEY", country: "Jersey", caInfo: "St. Helier", coInfo: "Europe", poInfo: "301.690", link: ALScreen()),
        CountryCard(counter: 31, icon: "🇰🇿", ccode: "KAZ", country: "Kazakhstan", caInfo: "Nursultan", coInfo: "Eurasia", poInfo: "19.205.043", link: ALScreen()),
        CountryCard(counter: 32, icon: "🇽🇰", ccode: "KOS", country: "Kosovo", caInfo: "Pristina", coInfo: "Europe", poInfo: "1,769,113", link: const ALScreen()),
        CountryCard(counter: 33, icon: "🇱🇻", ccode: "LVA", country: "Latvia", caInfo: "Riga", coInfo: "Europe", poInfo: "1.848.837", link: ALScreen()),
        CountryCard(counter: 34, icon: "🇱🇮", ccode: "LIE", country: "Liechtenstein", caInfo: "Vaduz", coInfo: "Europe", poInfo: "38.387", link: const ALScreen()),
        CountryCard(counter: 35, icon: "🇱🇹", ccode: "LTU", country: "Lithuania", caInfo: "Vilnius", coInfo: "Europe", poInfo: "2.661.708", link: const ALScreen()),
        CountryCard(counter: 36, icon: "🇱🇺", ccode: "LUX", country: "Luxembourg", caInfo: "Luxembourg", coInfo: "Europe", poInfo: "642.371", link: const ALScreen()),
        CountryCard(counter: 37, icon: "🇲🇹", ccode: "MLT", country: "Malta", caInfo: "Valletta", coInfo: "Europe", poInfo: "444.033", link: const ALScreen()),
        CountryCard(counter: 38, icon: "🇲🇩", ccode: "MDA", country: "Moldova", caInfo: "Chişinau", coInfo: "Europe", poInfo: "4.013.171", link: const ALScreen()),
        CountryCard(counter: 39, icon: "🇲🇨", ccode: "MCO", country: "Monaco", caInfo: "Monaco", coInfo: "Europe", poInfo: "39.783", link: const ALScreen()),
        CountryCard(counter: 40, icon: "🇲🇪", ccode: "MNE", country: "Montenegro", caInfo: "Podgorica", coInfo: "Europe", poInfo: "627.950", link: const ALScreen()),
        CountryCard(counter: 41, icon: "🇳🇱", ccode: "NLD", country: "Netherlands", caInfo: "Amsterdam", coInfo: "Europe", poInfo: "17.211.447", link: const ALScreen()),
        CountryCard(counter: 42, icon: "🏴󠁧󠁢󠁮󠁩󠁲󠁿", ccode: "GBR", country: "Northern Ireland", caInfo: "Belfast", coInfo: "Europe", poInfo: "1.910.000", link: const ALScreen()),
        CountryCard(counter: 43, icon: "🇲🇰", ccode: "MKD", country: "North Macedonia", caInfo: "Skopje", coInfo: "Europe", poInfo: "2.081.304", link: const ALScreen()),
        CountryCard(counter: 44, icon: "🇳🇴", ccode: "NOR", country: "Norway", caInfo: "Oslo", coInfo: "Europe", poInfo: "5.511.370", link: const ALScreen()),
        CountryCard(counter: 45, icon: "🇵🇱", ccode: "POL", country: "Poland", caInfo: "Warsaw", coInfo: "Europe", poInfo: "37.739.785", link: const ALScreen()),
        CountryCard(counter: 46, icon: "🇵🇹", ccode: "PRT", country: "Portugal", caInfo: "Lisbon", coInfo: "Europe", poInfo: "10.140.570", link: const ALScreen()),
        CountryCard(counter: 47, icon: "🇷🇴", ccode: "ROU", country: "Romania", caInfo: "Bucharest", coInfo: "Europe", poInfo: "19.031.335", link: const ALScreen()),
        CountryCard(counter: 48, icon: "🇷🇺", ccode: "RUS", country: "Russia", caInfo: "Moscow", coInfo: "Eurasia", poInfo: "145.805.947", link: const ALScreen()),
        CountryCard(counter: 49, icon: "🇸🇲", ccode: "SMR", country: "San Marino", caInfo: "San Marino", coInfo: "Europe", poInfo: "34.085", link: const ALScreen()),
        CountryCard(counter: 50, icon: "🏴󠁧󠁢󠁳󠁣󠁴󠁿", ccode: "GBR", country: "Scotland", caInfo: "Edinburgh", coInfo: "Europe", poInfo: "5.466.000", link: ALScreen()),
        CountryCard(counter: 51, icon: "🇷🇸", ccode: "SRB", country: "Serbia", caInfo: "Belgrade", coInfo: "Europe", poInfo: "8.653.016", link: const ALScreen()),
        CountryCard(counter: 52, icon: "🇸🇰", ccode: "SVK", country: "Slovakia", caInfo: "Bratislava", coInfo: "Europe", poInfo: "5.460.193", link: const ALScreen()),
        CountryCard(counter: 53, icon: "🇸🇮", ccode: "SVN", country: "Slovenia", caInfo: "Ljubljana", coInfo: "Europe", poInfo: "2.078.034", link: const ALScreen()),
        CountryCard(counter: 54, icon: "🇪🇸", ccode: "ESP", country: "Spain", caInfo: "Madrid", coInfo: "Europe", poInfo: "46.719.142", link: ALScreen()),
        CountryCard(counter: 55, icon: "🇸🇪", ccode: "SWE", country: "Sweden", caInfo: "Stockholm", coInfo: "Europe", poInfo: "10.218.971", link: const ALScreen()),
        CountryCard(counter: 56, icon: "🇨🇭", ccode: "CHE", country: "Switzerland", caInfo: "Bern(Not Official)", coInfo: "Europe", poInfo: "8.773.637", link: ALScreen()),
        CountryCard(counter: 57, icon: "🇹🇷", ccode: "TUR", country: "Turkey", caInfo: "Ankara", coInfo: "Eurasia", poInfo: "85.561.976", link: TRScreen()),
        CountryCard(counter: 58, icon: "🇺🇦", ccode: "UKR", country: "Ukraine", caInfo: "Kiev", coInfo: "Europe", poInfo: "43.192.122", link: const ALScreen()),
        CountryCard(counter: 59, icon: "🇻🇦", ccode: "VAT", country: "Vatican City(Holy See)", caInfo: "Vatican City", coInfo: "Europe", poInfo: "799", link: const ALScreen()),
        CountryCard(counter: 60, icon: "🏴󠁧󠁢󠁷󠁬󠁳󠁿", ccode: "GBR", country: "Wales", caInfo: "Cardiff", coInfo: "Europe", poInfo: "3.199.000", link: const ALScreen()),
      ],
    );
  }
}

class CountryCard extends StatelessWidget {
  CountryCard ({required this.counter, required this.icon, required this.ccode, required this.country, required this.caInfo, required this.coInfo, required this.poInfo, required this.link});
  
  final String icon;
  final String ccode;
  final String country;
  final String caInfo;
  final String coInfo;
  final String poInfo;
  final Widget link;

  int counter = 0;

  Color? backgroundColor () {
    Color? color;
    if(counter%5 == 1){
      color = Colors.blue[100];
    }
    else if (counter%5 == 2){
      color = Colors.blue[300];
    }
    else if (counter%5 == 3){
      color = Colors.blue;
    }
    else if (counter%5 == 4){
      color = Colors.blue[700];
    }
    else {
      color = Colors.blue[900];
    }
    return color;
  }

  Color textColor () {
    Color color;
    if (counter%5 == 1 || counter%5 == 2){
      color = Colors.black;
    }
    else {
      color = Colors.white;
    }
    return color;
  }
  
  @override
  Widget build (BuildContext context) {
    return Card(
      color: backgroundColor(),
      child: ListView(
        children: [
          ListTile(
            leading: Text(icon, style: const TextStyle(fontSize: 30),),
            title: Text(country, style: TextStyle(color: textColor()),),
            subtitle: Text(ccode),
          ),
          Center(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(width: 69),
                    Text("Capital: ", style: TextStyle(color: textColor(), fontWeight: FontWeight.bold)),
                    Text(caInfo, style: TextStyle(color: textColor()),)
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const SizedBox(width: 69),
                    Text("Continent: ", style: TextStyle(color: textColor(), fontWeight: FontWeight.bold)),
                    Text(coInfo, style: TextStyle(color: textColor()),)
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const SizedBox(width: 69),
                    Text("Population: ", style: TextStyle(color: textColor(), fontWeight: FontWeight.bold)),
                    Text(poInfo, style: TextStyle(color: textColor()),)
                  ],
                ),     
              ],
            )
          ),
          const SizedBox(height: 36),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => link));
              },
            child: const Text("View More"),
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              primary: Colors.blue[900]
            ),
          )
        ],
      )
    );
  }
}