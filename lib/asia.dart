import 'dart:html';

import 'package:c_data/main.dart';
import 'package:c_data/africa.dart';
import 'package:c_data/americas.dart';
import 'package:c_data/europe.dart';
import 'package:c_data/icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Europe/albania.dart';

class AsiaScreen extends StatefulWidget{
  AsiaScreen();

  AsiaScreenState createState() => AsiaScreenState();
}

class AsiaScreenState extends State<AsiaScreen> {
  int selectedIndex = 0;
  PageController pageController = PageController();

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent[700],
        foregroundColor: Colors.white,
        title: const Text("Country Database - Asia/Ocenia"),
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => EuropeScreen(),));
            }, 
            icon: const Icon(ContinentIcons.globe_europe),
          ),
        ],
      ),
      body: PageView(
        controller: pageController,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                Colors.yellow[200] as Color,
                Colors.yellow[800] as Color,
                ]
                )
            ),
            child: ASScreen(),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                Colors.yellow[200] as Color,
                Colors.yellow[800] as Color,
                ]
              )
            ),
            child: OCScreen(),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Asia"),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Oceania"),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.yellowAccent[700],
        unselectedItemColor: Colors.yellowAccent[100],
        onTap: onClicked,
      ),
    );
  }
}

class ASScreen extends StatefulWidget{
  const ASScreen();

  @override
  ASCountries createState() => ASCountries();
}

class ASCountries extends State<ASScreen> {

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5,
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 5.0,
      scrollDirection: Axis.vertical,
      children: [
        // ignore: prefer_const_constructors
        CountryCard(counter: 1, icon: "🇦🇫", ccode: "AFG", country: "Afghanistan", caInfo: "Kabul", coInfo: "Asia", poInfo: "40.754.388", link: const ALScreen()),
        CountryCard(counter: 2, icon: "🇦🇲", ccode: "ARM", country: "Armenia", caInfo: "Yerevan", coInfo: "Eurasia", poInfo: "2.971.966", link: const ALScreen()),
        CountryCard(counter: 3, icon: "🇦🇿", ccode: "AZE", country: "Azerbaijan", caInfo: "Baku", coInfo: "Eurasia", poInfo: "10.300.205", link: const ALScreen()),
        CountryCard(counter: 4, icon: "🇧🇭", ccode: "BHR", country: "Bahrain", caInfo: "Manama", coInfo: "Asia", poInfo: "1.783.983", link: const ALScreen()),
        CountryCard(counter: 5, icon: "🇧🇩", ccode: "BGD", country: "Bangladesh", caInfo: "Dakka", coInfo: "Asia", poInfo: "167.885.689", link: const ALScreen()),
        CountryCard(counter: 6, icon: "🇧🇹", ccode: "BTN", country: "Bhutan", caInfo: "Thimphu", coInfo: "Asia", poInfo: "787.941", link: const ALScreen()),
        CountryCard(counter: 7, icon: "🇮🇴", ccode: "IOT", country: "British Indian Ocean Territory", caInfo: "Camp Justice", coInfo: "Asia", poInfo: "3.000", link: const ALScreen()),
        CountryCard(counter: 8, icon: "🇧🇳", ccode: "BRN", country: "Brunei", caInfo: "Bandar Seri Begawan", coInfo: "Asia", poInfo: "445.431", link: const ALScreen()),
        CountryCard(counter: 9, icon: "🇰🇭", ccode: "KHM", country: "Cambodia", caInfo: "Phnom Penh", coInfo: "Asia", poInfo: "17.168.639", link: const ALScreen()),
        CountryCard(counter: 10, icon: "🇨🇳", ccode: "CHN", country: "China", caInfo: "Beijing", coInfo: "Asia", poInfo: "1.448.471.400", link: const ALScreen()),
        CountryCard(counter: 11, icon: "🇨🇾", ccode: "CYP", country: "Cyprus", caInfo: "Nicosia", coInfo: "Eurasia", poInfo: "1.223.387", link: const ALScreen()),
        CountryCard(counter: 12, icon: "🇪🇬", ccode: "EGY", country: "Egypt", caInfo: "Cairo", coInfo: "Africa/Asia", poInfo: "106.156.692", link: const ALScreen()),
        CountryCard(counter: 13, icon: "🇬🇪", ccode: "GEO", country: "Georgia", caInfo: "Tbilisi", coInfo: "Eurasia", poInfo: "3.968.738", link: const ALScreen()),
        CountryCard(counter: 14, icon: "🇭🇲", ccode: "HMD", country: "Heard Island and McDonald Islands", caInfo: "", coInfo: "Asia/Oceania", poInfo: "0", link: const ALScreen()),
        CountryCard(counter: 15, icon: "🇭🇰", ccode: "HKG", country: "Hong Kong", caInfo: "", coInfo: "Asia", poInfo: "7.604.299", link: const ALScreen()),
        CountryCard(counter: 16, icon: "🇮🇳", ccode: "IND", country: "India", caInfo: "New Delhi", coInfo: "Asia", poInfo: "1.406.631.776", link: const ALScreen()),
        CountryCard(counter: 17, icon: "🇮🇩", ccode: "IDN", country: "Indonesia", caInfo: "Jakarta", coInfo: "Asia", poInfo: "279.134.505", link: const ALScreen()),
        CountryCard(counter: 18, icon: "🇮🇷", ccode: "IRN", country: "Iran", caInfo: "Tehran", coInfo: "Asia", poInfo: "86.022.837", link: const ALScreen()),
        CountryCard(counter: 19, icon: "🇮🇶", ccode: "IRQ", country: "Iraq", caInfo: "Baghdad", coInfo: "Asia", poInfo: "42.164.965", link: const ALScreen()),
        CountryCard(counter: 20, icon: "🇮🇱", ccode: "ISL", country: "Israel", caInfo: "Jerusalem", coInfo: "Asia", poInfo: "8.922.892", link: const ALScreen()),
        CountryCard(counter: 21, icon: "🇯🇵", ccode: "JPN", country: "Japan", caInfo: "Tokyo", coInfo: "Asia", poInfo: "125.584.838", link: const ALScreen()),
        CountryCard(counter: 22, icon: "🇯🇴", ccode: "JOR", country: "Jordan", caInfo: "Amman", coInfo: "Asia", poInfo: "10.300.869", link: const ALScreen()),
        CountryCard(counter: 23, icon: "🇰🇿", ccode: "KAZ", country: "Kazakhstan", caInfo: "Nursultan", coInfo: "Eurasia", poInfo: "19.205.043", link: ALScreen()),
        CountryCard(counter: 24, icon: "🇰🇼", ccode: "KWT", country: "Kuwait", caInfo: "Kuwait City", coInfo: "Asia", poInfo: "4.380.326", link: const ALScreen()),
        CountryCard(counter: 25, icon: "🇰🇬", ccode: "KGZ", country: "Kyrgyzstan", caInfo: "Bishkek", coInfo: "Asia", poInfo: "6.728.271", link: const ALScreen()),
        CountryCard(counter: 26, icon: "🇱🇦", ccode: "LAO", country: "Laos", caInfo: "Vientiane", coInfo: "Asia", poInfo: "7.481.023", link: const ALScreen()),
        CountryCard(counter: 27, icon: "🇱🇧", ccode: "LBN", country: "Lebanon", caInfo: "Beirut", coInfo: "Asia", poInfo: "6.684.849", link: const ALScreen()),
        CountryCard(counter: 28, icon: "🇲🇴", ccode: "MAC", country: "Macau", caInfo: "Macau", coInfo: "Asia", poInfo: "667.490", link: const ALScreen()),
        CountryCard(counter: 29, icon: "🇲🇾", ccode: "MYS", country: "Malaysia", caInfo: "Kuala Lumpur", coInfo: "Asia", poInfo: "33.181.072", link: const ALScreen()),
        CountryCard(counter: 30, icon: "🇲🇻", ccode: "MDV", country: "Maldives", caInfo: "Male", coInfo: "Asia", poInfo: "540.985", link: const ALScreen()),
        CountryCard(counter: 31, icon: "🇲🇳", ccode: "MNG", country: "Mongolia", caInfo: "Ulaanbaatar", coInfo: "Asia", poInfo: "3.378.078", link: const ALScreen()),
        CountryCard(counter: 32, icon: "🇲🇲", ccode: "MMR", country: "Myanmar", caInfo: "Nay Pyi Taw", coInfo: "Asia", poInfo: "55.227.143", link: const ALScreen()),
        CountryCard(counter: 33, icon: "🇳🇵", ccode: "NPL", country: "Nepal", caInfo: "Kathmandu", coInfo: "Asia", poInfo: "30.225.582", link: const ALScreen()),
        CountryCard(counter: 34, icon: "🇰🇵", ccode: "PRK", country: "North Korea", caInfo: "Pyongyang", coInfo: "Asia", poInfo: "25.990.679", link: const ALScreen()),
        CountryCard(counter: 35, icon: "🇴🇲", ccode: "OMN", country: "Oman", caInfo: "Muscat", coInfo: "Asia", poInfo: "5.323.993", link: const ALScreen()),
        CountryCard(counter: 36, icon: "🇵🇰", ccode: "PAK", country: "Pakistan", caInfo: "Islamabad", coInfo: "Asia", poInfo: "229.488.994", link: const ALScreen()),
        CountryCard(counter: 37, icon: "🇵🇸", ccode: "PSE", country: "Palestine", caInfo: "Ramallah", coInfo: "Asia", poInfo: "5.345.541", link: const ALScreen()),
        CountryCard(counter: 38, icon: "🇵🇭", ccode: "PHL", country: "Philippines", caInfo: "Manila", coInfo: "Asia", poInfo: "112.508.994", link: const ALScreen()),
        CountryCard(counter: 39, icon: "🇶🇦", ccode: "QAT", country: "Qatar", caInfo: "Doha", coInfo: "Asia", poInfo: "2.979.915", link: const ALScreen()),
        CountryCard(counter: 40, icon: "🇷🇺", ccode: "RUS", country: "Russia", caInfo: "Moscow", coInfo: "Eurasia", poInfo: "145.805.947", link: const ALScreen()),
        CountryCard(counter: 41, icon: "🇸🇦", ccode: "SAU", country: "Saudi Arabia", caInfo: "Riyadh", coInfo: "Asia", poInfo: "35.844.909", link: const ALScreen()),
        CountryCard(counter: 42, icon: "🇸🇬", ccode: "SGP", country: "Singapore", caInfo: "Singapur", coInfo: "Asia", poInfo: "5.943.546", link: const ALScreen()),
        CountryCard(counter: 43, icon: "🇰🇷", ccode: "KOR", country: "South Korea", caInfo: "Seoul", coInfo: "Asia", poInfo: "51.329.899", link: const ALScreen()),
        CountryCard(counter: 44, icon: "🇱🇰", ccode: "LKA", country: "Sri Lanka", caInfo: "Colombo", coInfo: "Asia", poInfo: "21.575.842", link: const ALScreen()),
        CountryCard(counter: 45, icon: "🇸🇾", ccode: "SYN", country: "Syria", caInfo: "Damascus", coInfo: "Asia", poInfo: "19.364.809", link: const ALScreen()),
        CountryCard(counter: 46, icon: "🇹🇼", ccode: "TWN", country: "Taiwan", caInfo: "Taipei", coInfo: "Asia", poInfo: "23.888.595", link: const ALScreen()),
        CountryCard(counter: 47, icon: "🇹🇯", ccode: "TJK", country: "Tajikistan", caInfo: "Dushanbe", coInfo: "Asia", poInfo: "9.957.464", link: const ALScreen()),
        CountryCard(counter: 48, icon: "🇹🇭", ccode: "THA", country: "Thailand", caInfo: "Bangkok", coInfo: "Asia", poInfo: "70.078.203", link: const ALScreen()),
        CountryCard(counter: 49, icon: "🇹🇱", ccode: "TLS", country: "Timor-Leste", caInfo: "Dili", coInfo: "Asia", poInfo: "1.369.429", link: const ALScreen()),
        CountryCard(counter: 50, icon: "🇹🇷", ccode: "TUR", country: "Turkey", caInfo: "Ankara", coInfo: "Eurasia", poInfo: "85.561.976", link: const ALScreen()),
        CountryCard(counter: 51, icon: "🇹🇲", ccode: "TKM", country: "Turkmenistan", caInfo: "Ashgabat", coInfo: "Asia", poInfo: "6.201.943", link: const ALScreen()),
        CountryCard(counter: 52, icon: "🇦🇪", ccode: "ARE", country: "United Arab Emirates", caInfo: "Abu Dhabi", coInfo: "Asia", poInfo: "10.081.785", link: const ALScreen()),
        CountryCard(counter: 53, icon: "🇺🇿", ccode: "UZB", country: "Uzbekistan", caInfo: "Tashkent", coInfo: "Asia", poInfo: "34.382.084", link: const ALScreen()),
        CountryCard(counter: 54, icon: "🇻🇳", ccode: "VNM", country: "Vietnam", caInfo: "Hanoi", coInfo: "Asia", poInfo: "98.953.541", link: const ALScreen()),
        CountryCard(counter: 55, icon: "🇾🇪", ccode: "YEM", country: "Yemen", caInfo: "Sana'a", coInfo: "Asia", poInfo: "31.154.867", link: const ALScreen()),
      ],
    );
  }
}

class OCScreen extends StatefulWidget{
  const OCScreen();

  @override
  OCCountries createState() => OCCountries();
}

class OCCountries extends State<OCScreen> {

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5,
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 5.0,
      scrollDirection: Axis.vertical,
      children: [
        // ignore: prefer_const_constructors
        CountryCard(counter: 1, icon: "🇦🇸", ccode: "ASM", country: "American Samoa", caInfo: "Pago Pago", coInfo: "Oceania", poInfo: "55.030", link: const ALScreen()),
        CountryCard(counter: 2, icon: "🇦🇺", ccode: "AUS", country: "Australia", caInfo: "Canberra", coInfo: "Oceania", poInfo: "26.068.792", link: const ALScreen()),
        CountryCard(counter: 3, icon: "🇨🇽", ccode: "CXR", country: "Christmas Island", caInfo: "Flying Fish Cove", coInfo: "Oceania", poInfo: "1.843", link: const ALScreen()),
        CountryCard(counter: 4, icon: "🇨🇨", ccode: "CCK", country: "Cocos (Keeling) Islands", caInfo: "West Island", coInfo: "Oceania", poInfo: "544", link: const ALScreen()),
        CountryCard(counter: 5, icon: "🇨🇰", ccode: "COK", country: "Cook Islands", caInfo: "Avarua", coInfo: "Oceania", poInfo: "17.571", link: const ALScreen()),
        CountryCard(counter: 6, icon: "🇫🇯", ccode: "FJI", country: "Fiji", caInfo: "Suva", coInfo: "Oceania", poInfo: "909.466", link: const ALScreen()),
        CountryCard(counter: 7, icon: "🇵🇫", ccode: "PYF", country: "French Polynesia", caInfo: "Papeete", coInfo: "Oceania", poInfo: "284.164", link: const ALScreen()),
        CountryCard(counter: 8, icon: "🇭🇲", ccode: "HMD", country: "Heard Island and McDonald Islands", caInfo: "", coInfo: "Asia/Oceania", poInfo: "0", link: const ALScreen()),
        CountryCard(counter: 9, icon: "🇬🇺", ccode: "GUM", country: "Guam", caInfo: "Hagåtña", coInfo: "Oceania", poInfo: "171.519", link: const ALScreen()),
        CountryCard(counter: 10, icon: "🇰🇮", ccode: "KIR", country: "Kiribati", caInfo: "Tarawa", coInfo: "Oceania", poInfo: "123.419", link: const ALScreen()),
        CountryCard(counter: 11, icon: "🇲🇭", ccode: "MHL", country: "Marshall Islands", caInfo: "Majuro", coInfo: "Oceania", poInfo: "60.057", link: const ALScreen()),
        CountryCard(counter: 12, icon: "🇫🇲", ccode: "FSM", country: "Micronesia", caInfo: "Palikir", coInfo: "Oceania", poInfo: "117.489", link: const ALScreen()),
        CountryCard(counter: 13, icon: "🇳🇷", ccode: "NRU", country: "Nauru", caInfo: "Yaren", coInfo: "Oceania", poInfo: "10.903", link: const ALScreen()),
        CountryCard(counter: 14, icon: "🇳🇨", ccode: "NCL", country: "New Caledonia", caInfo: "Nouméa", coInfo: "Oceania", poInfo: "290.915", link: const ALScreen()),
        CountryCard(counter: 15, icon: "🇳🇿", ccode: "NZL", country: "New Zealand", caInfo: "Wellington", coInfo: "Oceania", poInfo: "4.898.203", link: const ALScreen()),
        CountryCard(counter: 16, icon: "🇳🇺", ccode: "NIU", country: "Niue", caInfo: "Alofi", coInfo: "Oceania", poInfo: "1.622", link: const ALScreen()),
        CountryCard(counter: 17, icon: "🇳🇫", ccode: "NFK", country: "Norfolk Island", caInfo: "Kingston", coInfo: "Oceania", poInfo: "1.748", link: const ALScreen()),
        CountryCard(counter: 18, icon: "🇲🇵", ccode: "MNP", country: "Northern Mariana Islands", caInfo: "Saipan", coInfo: "Oceania", poInfo: "58.269", link: const ALScreen()),
        CountryCard(counter: 19, icon: "🇵🇼", ccode: "PLW", country: "Palau", caInfo: "Ngerulmud", coInfo: "Oceania", poInfo: "18.233", link: const ALScreen()),
        CountryCard(counter: 20, icon: "🇵🇬", ccode: "PNG", country: "Papua New Guinea", caInfo:  "Port Moresby", coInfo: "Oceania", poInfo: "9.292.169", link: ALScreen()),
        CountryCard(counter: 21, icon: "🇵🇳", ccode: "PCN", country: "Pitcairn Islands", caInfo: "Adamstown", coInfo: "Oceania", poInfo: "47", link: const ALScreen()),
        CountryCard(counter: 22, icon: "🇼🇸", ccode: "WSM", country: "Samoa", caInfo: "Apia", coInfo: "Oceania", poInfo: "202.239", link: ALScreen()),
        CountryCard(counter: 23, icon: "🇸🇧", ccode: "SLB", country: "Solomon Islands", caInfo: "Honiara", coInfo: "Oceania", poInfo: "721.159", link: ALScreen()),
        CountryCard(counter: 24, icon: "🇹🇰", ccode: "TKL", country: "Tokelau", caInfo: "", coInfo: "Oceania", poInfo: "1.378", link: ALScreen()),
        CountryCard(counter: 25, icon: "🇹🇴", ccode: "TON", country: "Tonga", caInfo: "Nuku'alofa", coInfo: "Oceania", poInfo: "107.749", link: const ALScreen()),
        CountryCard(counter: 26, icon: "🇹🇻", ccode: "TUV", country: "Tuvalu", caInfo: "Funafuti", coInfo: "Oceania", poInfo: "12.066", link: const ALScreen()),
        CountryCard(counter: 27, icon: "🇺🇲", ccode: "UMI", country: "United States Minor Outlying Islands", caInfo: "", coInfo: "Oceania", poInfo: "315", link: const ALScreen()),
        CountryCard(counter: 28, icon: "🇻🇺", ccode: "VUT", country: "Vanuatu", caInfo: "Port Vila", coInfo: "Oceania", poInfo: "321.832", link: const ALScreen()),
        CountryCard(counter: 29, icon: "🇼🇫", ccode: "WLF", country: "Wallis and Futuna", caInfo: "Matā'Utu", coInfo: "Oceania", poInfo: "10.982", link: const ALScreen()),
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
      color = Colors.yellow[100];
    }
    else if (counter%5 == 2){
      color = Colors.yellow[300];
    }
    else if (counter%5 == 3){
      color = Colors.yellow;
    }
    else if (counter%5 == 4){
      color = Colors.yellow[700];
    }
    else {
      color = Colors.yellow[900];
    }
    return color;
  }

  Color textColor () {
    Color color;
    if (counter%5 == 1 || counter%5 == 2){
      color = Colors.black;
    }
    else if (counter%5 == 3) {
      color = Colors.grey;
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
              primary: Colors.yellow[900]
            ),
          )
        ],
      )
    );
  }
}