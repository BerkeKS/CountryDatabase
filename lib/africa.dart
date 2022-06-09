import 'dart:html';

import 'package:c_data/main.dart';
import 'package:c_data/americas.dart';
import 'package:c_data/asia.dart';
import 'package:c_data/europe.dart';
import 'package:c_data/icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Europe/albania.dart';

class AfricaScreen extends StatelessWidget{
  const AfricaScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[700],
        foregroundColor: Colors.white,
        title: const Text("Country Database - Africa"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen(),));
            }, 
            icon: const Icon(Icons.home_filled)
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AmericasScreen(),));
            }, 
            icon: const Icon(ContinentIcons.globe_americas)
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AsiaScreen(),));
            }, 
            icon: const Icon(ContinentIcons.globe_asia),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => EuropeScreen(),));
            }, 
            icon: const Icon(ContinentIcons.globe_africa),
          ),
        ],
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.topLeft,
              colors: [
                Colors.green[200] as Color,
                Colors.green[800] as Color,
              ]
            )
          ),
          child: AFScreen(),
        ),
      ),
    );
  }
}

class AFScreen extends StatefulWidget{
  const AFScreen();

  @override
  Countries createState() => Countries();
}

class Countries extends State<AFScreen> {

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5,
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 5.0,
      scrollDirection: Axis.vertical,
      children: [
        // ignore: prefer_const_constructors
        CountryCard(counter: 1, icon: "🇩🇿", ccode: "DZA", country: "Algeria", caInfo: "Algiers", coInfo: "Africa", poInfo: "45.350.148", link: const ALScreen()),
        CountryCard(counter: 2, icon: "🇦🇴", ccode: "AGO", country: "Angola", caInfo: "Luanda", coInfo: "Africa", poInfo: "35.027.343", link: const ALScreen()),
        CountryCard(counter: 3, icon: "🇧🇯", ccode: "BEN", country: "Benin", caInfo: "Porto-Novo", coInfo: "Africa", poInfo: "12.784.726", link: const ALScreen()),
        CountryCard(counter: 4, icon: "🇧🇼", ccode: "BWA", country: "Botswana", caInfo: "Gaborone", coInfo: "Africa", poInfo: "2.441.162", link: const ALScreen()),
        CountryCard(counter: 5, icon: "🇧🇫", ccode: "BFA", country: "Burkina Faso", caInfo: "Ouagadougou", coInfo: "Africa", poInfo: "22.102.838", link: const ALScreen()),
        CountryCard(counter: 6, icon: "🇧🇮", ccode: "BDI", country: "Burundi", caInfo: "Bujumbura", coInfo: "Africa", poInfo: "12.624.840", link: const ALScreen()),
        CountryCard(counter: 7, icon: "🇨🇲", ccode: "CMR", country: "Cameroon", caInfo: "Yaounde", coInfo: "Africa", poInfo: "27.911.548", link: const ALScreen()),
        CountryCard(counter: 8, icon: "🇨🇻", ccode: "CPV", country: "Cape Verde", caInfo: "Praia", coInfo: "Africa", poInfo: "567.678", link: const ALScreen()),
        CountryCard(counter: 9, icon: "🇨🇫", ccode: "CAF", country: "Central African Republic", caInfo: "Bangui", coInfo: "Africa", poInfo: "5.016.678", link: const ALScreen()),
        CountryCard(counter: 10, icon: "🇹🇩", ccode: "TCD", country: "Chad", caInfo: "N'Djamena", coInfo: "Africa", poInfo: "17.413.580", link: const ALScreen()),
        CountryCard(counter: 11, icon: "🇰🇲", ccode: "COM", country: "Comoros", caInfo: "Moroni", coInfo: "Africa", poInfo: "907.419", link: const ALScreen()),
        CountryCard(counter: 12, icon: "🇨🇬", ccode: "COG", country: "Republic of Congo", caInfo: "Brazzaville", coInfo: "Africa", poInfo: "5.797.805", link: const ALScreen()),
        CountryCard(counter: 13, icon: "🇨🇩", ccode: "COD", country: "DR Congo", caInfo: "Kinshasa", coInfo: "Africa", poInfo: "95.240.792", link: const ALScreen()),
        CountryCard(counter: 14, icon: "🇨🇮", ccode: "CIV", country: "Cote d'Ivoire", caInfo: "Yamoussoukro", coInfo: "Africa", poInfo: "27.742.298", link: const ALScreen()),
        CountryCard(counter: 15, icon: "🇩🇯", ccode: "DJI", country: "Djibouti", caInfo: "Djibouti", coInfo: "Africa", poInfo: "1.016.097", link: const ALScreen()),
        CountryCard(counter: 16, icon: "🇪🇬", ccode: "EGY", country: "Egypt", caInfo: "Cairo", coInfo: "Africa/Asia", poInfo: "106.156.692", link: const ALScreen()),
        CountryCard(counter: 17, icon: "🇬🇶", ccode: "GNQ", country: "Equatorial Guinea", caInfo: "Malabo", coInfo: "Africa", poInfo: "1.496.662", link: const ALScreen()),
        CountryCard(counter: 18, icon: "🇪🇷", ccode: "ERI", country: "Eritrea", caInfo: "Asmara", coInfo: "Africa", poInfo: "3.662.244", link: const ALScreen()),
        CountryCard(counter: 19, icon: "🇸🇿", ccode: "SWZ", country: "Eswatini", caInfo: "Mbabane", coInfo: "Africa", poInfo: "1.184.817", link: ALScreen()),
        CountryCard(counter: 20, icon: "🇪🇹", ccode: "ETH", country: "Ethiopia", caInfo: "Addis Ababa", coInfo: "Africa", poInfo: "120.812.698", link: const ALScreen()),
        CountryCard(counter: 21, icon: "🇹🇫", ccode: "ATF", country: "French Southern and Antarctic Lands", caInfo: "Port-aux-Français", coInfo: "Africa", poInfo: "0", link: ALScreen()),
        CountryCard(counter: 22, icon: "🇬🇦", ccode: "GAB", country: "Gabon", caInfo: "Libreville", coInfo: "Africa", poInfo: "2.331.533", link: ALScreen()),
        CountryCard(counter: 23, icon: "🇬🇲", ccode: "GMB", country: "Gambia", caInfo: "Banjul", coInfo: "Africa", poInfo: "2.558.482", link: ALScreen()),
        CountryCard(counter: 24, icon: "🇬🇭", ccode: "GHA", country: "Ghana", caInfo: "Accra", coInfo: "Africa", poInfo: "32.395.450", link: const ALScreen()),
        CountryCard(counter: 25, icon: "🇬🇳", ccode: "GIN", country: "Guinea", caInfo: "Conakry", coInfo: "Africa", poInfo: "13.865.691", link: const ALScreen()),
        CountryCard(counter: 26, icon: "🇬🇼", ccode: "GNB", country: "Guinea-Bissau", caInfo: "Bissau", coInfo: "Africa", poInfo: "2.063.367", link: const ALScreen()),
        CountryCard(counter: 27, icon: "🇰🇪", ccode: "KEN", country: "Kenya", caInfo: "Nairobi", coInfo: "Africa", poInfo: "56.215.221", link: const ALScreen()),
        CountryCard(counter: 28, icon: "🇱🇸", ccode: "LSO", country: "Lesotho", caInfo: "Maseru", coInfo: "Africa", poInfo: "2.175.699", link: const ALScreen()),
        CountryCard(counter: 29, icon: "🇱🇷", ccode: "LBR", country: "Liberia", caInfo: "Monrovia", coInfo: "Africa", poInfo: "5.305.117", link: const ALScreen()),
        CountryCard(counter: 30, icon: "🇱🇾", ccode: "LBY", country: "Libya", caInfo: "Tripolis", coInfo: "Africa", poInfo: "7.040.745", link: ALScreen()),
        CountryCard(counter: 31, icon: "🇲🇬", ccode: "MDG", country: "Madagascar", caInfo: "Antananarivo", coInfo: "Africa", poInfo: "29.178.077", link: ALScreen()),
        CountryCard(counter: 32, icon: "🇲🇼", ccode: "MWI", country: "Malawi", caInfo: "Lilongwe", coInfo: "Africa", poInfo: "20.180.839", link: ALScreen()),
        CountryCard(counter: 33, icon: "🇲🇱", ccode: "MLI", country: "Mali", caInfo: "Bamako", coInfo: "Africa", poInfo: "21.473.764", link: const ALScreen()),
        CountryCard(counter: 34, icon: "🇲🇷", ccode: "MRT", country: "Mauritania", caInfo: "Nouakchott", coInfo: "Africa", poInfo: "4.901.981", link: ALScreen()),
        CountryCard(counter: 35, icon: "🇲🇺", ccode: "MUS", country: "Mauritius", caInfo: "Port Louis", coInfo: "Africa", poInfo: "1.274.727", link: const ALScreen()),
        CountryCard(counter: 36, icon: "🇾🇹", ccode: "MYT", country: "Mayotte", caInfo: "Mamoudzou", coInfo: "Africa", poInfo: "286.259", link: const ALScreen()),
        CountryCard(counter: 37, icon: "🇲🇦", ccode: "MAR", country: "Morocco", caInfo: "Rabat", coInfo: "Africa", poInfo: "37.772.756", link: const ALScreen()),
        CountryCard(counter: 38, icon: "🇲🇿", ccode: "MOZ", country: "Mozambique", caInfo: "Mapoto", coInfo: "Africa", poInfo: "33.089.461", link: const ALScreen()),
        CountryCard(counter: 39, icon: "🇳🇦", ccode: "NAM", country: "Namibia", caInfo: "Windhoek", coInfo: "Africa", poInfo: "2.633.874", link: const ALScreen()),
        CountryCard(counter: 40, icon: "🇳🇪", ccode: "NER", country: "Niger", caInfo: "Niamey", coInfo: "Africa", poInfo: "26.083.660", link: const ALScreen()),
        CountryCard(counter: 41, icon: "🇳🇬", ccode: "NGA", country: "Nigeria", caInfo: "Abuja", coInfo: "Africa", poInfo: "216.746.934", link: const ALScreen()),
        CountryCard(counter: 42, icon: "🇷🇪", ccode: "REU", country: "Réunion", caInfo: "Saint-Denis", coInfo: "Africa", poInfo: "908.061", link: const ALScreen()),
        CountryCard(counter: 43, icon: "🇷🇼", ccode: "RWA", country: "Rwanda", caInfo: "Kigali", coInfo: "Africa", poInfo: "13.600.464", link: const ALScreen()),
        CountryCard(counter: 44, icon: "🇸🇭", ccode: "SHN", country: "Saint Helena, Ascension and Tristan da Cunha", caInfo: "Jamestown", coInfo: "Africa", poInfo: "6.107", link: const ALScreen()),
        CountryCard(counter: 45, icon: "🇸🇹", ccode: "STP", country: "São Tomé and Príncipe", caInfo: "São Tomé", coInfo: "Africa", poInfo: "227.679", link: const ALScreen()),
        CountryCard(counter: 46, icon: "🇸🇳", ccode: "SEN", country: "Senegal", caInfo: "Dakar", coInfo: "Africa", poInfo: "17.653.671", link: const ALScreen()),
        CountryCard(counter: 47, icon: "🇸🇨", ccode: "SYC", country: "Seychelles", caInfo: "Victoria", coInfo: "Africa", poInfo: "99.426", link: const ALScreen()),
        CountryCard(counter: 48, icon: "🇸🇱", ccode: "SLE", country: "Sierra Leone", caInfo: "Freetown", coInfo: "Africa", poInfo: "8.306.436", link: const ALScreen()),
        CountryCard(counter: 49, icon: "🇸🇴", ccode: "SOM", country: "Somalia", caInfo: "Mogadishu", coInfo: "Africa", poInfo: "16.841.795", link: const ALScreen()),
        CountryCard(counter: 50, icon: "🇿🇦", ccode: "ZAF", country: "South Africa", caInfo: "Pretoria \nCape Town \nBloemfontein", coInfo: "Africa", poInfo: "60.756.135", link: const ALScreen()),
        CountryCard(counter: 51, icon: "🇸🇸", ccode: "SSD", country: "South Sudan", caInfo: "Juba", coInfo: "Africa", poInfo: "11.618.511", link: const ALScreen()),
        CountryCard(counter: 52, icon: "🇸🇩", ccode: "SDN", country: "Sudan", caInfo: "Khartoum", coInfo: "Africa", poInfo: "45.992.020", link: const ALScreen()),
        CountryCard(counter: 53, icon: "🇹🇿", ccode: "TZA", country: "Tanzania", caInfo: "Dodoma", coInfo: "Africa", poInfo: "63.298.550", link: ALScreen()),
        CountryCard(counter: 54, icon: "🇹🇬", ccode: "TGO", country: "Togo", caInfo: "Lome", coInfo: "Africa", poInfo: "8.680.837", link: const ALScreen()),
        CountryCard(counter: 55, icon: "🇹🇳", ccode: "TUN", country: "Tunisia", caInfo: "Tunis", coInfo: "Africa", poInfo: "12.046.656", link: const ALScreen()),
        CountryCard(counter: 56, icon: "🇺🇬", ccode: "UGA", country: "Uganda", caInfo: "Kampala", coInfo: "Africa", poInfo: "48.432.863", link: const ALScreen()),
        CountryCard(counter: 57, icon: "🇪🇭", ccode: "ESH", country: "Western Sahara", caInfo: "Laayoune", coInfo: "Africa", poInfo: "626.161", link: ALScreen()),
        CountryCard(counter: 58, icon: "🇿🇲", ccode: "ZMB", country: "Zambia", caInfo: "Lusaka", coInfo: "Africa", poInfo: "19.470.234", link: const ALScreen()),
        CountryCard(counter: 59, icon: "🇿🇼", ccode: "ZWE", country: "Zimbabwe", caInfo: "Harare", coInfo: "Africa", poInfo: "15.331.428", link: ALScreen()),
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
      color = Colors.green[100];
    }
    else if (counter%5 == 2){
      color = Colors.green[300];
    }
    else if (counter%5 == 3){
      color = Colors.green;
    }
    else if (counter%5 == 4){
      color = Colors.green[700];
    }
    else {
      color = Colors.green[900];
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
              primary: Colors.green[900]
            ),
          )
        ],
      )
    );
  }
}