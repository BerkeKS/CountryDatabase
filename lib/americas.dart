import 'dart:html';

import 'package:c_data/Europe/albania.dart';
import 'package:c_data/main.dart';
import 'package:c_data/africa.dart';
import 'package:c_data/asia.dart';
import 'package:c_data/europe.dart';
import 'package:c_data/icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AmericasScreen extends StatefulWidget{
  AmericasScreen();

  AmericasScreenState createState() => AmericasScreenState();
}

class AmericasScreenState extends State<AmericasScreen> {
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
        backgroundColor: Colors.redAccent[700],
        foregroundColor: Colors.white,
        title: const Text("Country Database - Americas"),
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => AsiaScreen(),));
            }, 
            icon: const Icon(ContinentIcons.globe_asia),
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
                Colors.red[200] as Color,
                Colors.red[800] as Color,
                ]
                )
            ),
            child: NAScreen(),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                Colors.red[200] as Color,
                Colors.red[800] as Color,
                ]
              )
            ),
            child: CAScreen(),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                Colors.red[200] as Color,
                Colors.red[800] as Color,
                ]
              )
            ),
            child: SAScreen(),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "North America"),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Central America & Caribbean"),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "South America"),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.redAccent[700],
        unselectedItemColor: Colors.redAccent[100],
        onTap: onClicked,
      ),
    );
  }
}

class NAScreen extends StatefulWidget{
  const NAScreen();

  @override
  NACountries createState() => NACountries();
}

class NACountries extends State<NAScreen> {

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5,
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 5.0,
      scrollDirection: Axis.vertical,
      children: [
        // ignore: prefer_const_constructors
        CountryCard(counter: 1, icon: "🇧🇲", ccode: "BMU", country: "Bermuda", caInfo: "Hamilton", coInfo: "North America", poInfo: "61.939", link: const ALScreen()),
        CountryCard(counter: 2, icon: "🇨🇦", ccode: "CAN", country: "Canada", caInfo: "Ottawa", coInfo: "North America", poInfo: "38.388.419", link: const ALScreen()),
        CountryCard(counter: 3, icon: "🇬🇱", ccode: "GRL", country: "Greenland", caInfo: "Nuuk", coInfo: "North America", poInfo: "56.973", link: const ALScreen()),
        CountryCard(counter: 4, icon: "🇲🇽", ccode: "MEX", country: "Mexico", caInfo: "Mexico City", coInfo: "North America", poInfo: "131.562.772", link: const ALScreen()),
        CountryCard(counter: 5, icon: "🇵🇲", ccode: "SPM", country: "Saint Pierre and Miquelon", caInfo: "St. Pierre", coInfo: "North America", poInfo: "5.759", link: const ALScreen()),
        CountryCard(counter: 6, icon: "🇺🇸", ccode: "USA", country: "United States of America", caInfo: "Washington, D.C.", coInfo: "North America", poInfo: "334.805.269", link: const ALScreen()),
      ],
    );
  }
}

class CAScreen extends StatefulWidget{
  const CAScreen();

  @override
  CACountries createState() => CACountries();
}

class CACountries extends State<CAScreen> {

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5,
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 5.0,
      scrollDirection: Axis.vertical,
      children: [
        // ignore: prefer_const_constructors
        CountryCard(counter: 1, icon: "🇦🇮", ccode: "AIA", country: "Anguilla", caInfo: "The Valley", coInfo: "Caribbean", poInfo: "15.230", link: const ALScreen()),
        CountryCard(counter: 2, icon: "🇦🇬", ccode: "ATG", country: "Antigua and Barbuda", caInfo: "St John's", coInfo: "Caribbean", poInfo: "99.509", link: const ALScreen()),
        CountryCard(counter: 3, icon: "🇦🇼", ccode: "ARW", country: "Aruba", caInfo: "Oranjestad", coInfo: "Caribbean", poInfo: "107.609", link: const ALScreen()),
        CountryCard(counter: 4, icon: "🇧🇸", ccode: "BHS", country: "Bahamas", caInfo: "Nassau", coInfo: "Caribbean", poInfo: "400.516", link: const ALScreen()),
        CountryCard(counter: 5, icon: "🇧🇧", ccode: "BRB", country: "Barbados", caInfo: "Bridgetown", coInfo: "Caribbean", poInfo: "288.023", link: const ALScreen()),
        CountryCard(counter: 6, icon: "🇧🇿", ccode: "BLZ", country: "Belize", caInfo: "Belmopan", coInfo: "Central America", poInfo: "412.190", link: const ALScreen()),
        CountryCard(counter: 7, icon: "🇻🇬", ccode: "VGB", country: "British Virgin Islands", caInfo: "Road Town", coInfo: "Caribbean", poInfo: "30.596", link: const ALScreen()),
        CountryCard(counter: 8, icon: "🇰🇾", ccode: "CYM", country: "Cayman Islands", caInfo: "George Town", coInfo: "Caribbean", poInfo: "67.277", link: const ALScreen()),
        CountryCard(counter: 9, icon: "🇨🇷", ccode: "CRI", country: "Costa Rica", caInfo: "San José", coInfo: "Central America", poInfo: "5.182.354", link: const ALScreen()),
        CountryCard(counter: 10, icon: "🇨🇺", ccode: "CUB", country: "Cuba", caInfo: "Havana", coInfo: "Caribbean", poInfo: "11.305.652", link: const ALScreen()),
        CountryCard(counter: 11, icon: "🇨🇼", ccode: "CUW", country: "Curacao", caInfo: "Willemstad", coInfo: "Caribbean", poInfo: "165.529", link: const ALScreen()),
        CountryCard(counter: 12, icon: "🇩🇲", ccode: "DMA", country: "Dominica", caInfo: "Roseau", coInfo: "Caribbean", poInfo: "72.344", link: const ALScreen()),
        CountryCard(counter: 13, icon: "🇩🇴", ccode: "DOM", country: "Dominican Republic", caInfo: "Santo Domingo", coInfo: "Caribbean", poInfo: "11.056.370", link: const ALScreen()),
        CountryCard(counter: 14, icon: "🇸🇻", ccode: "SLV", country: "El Salvador", caInfo: "San Salvador", coInfo: "Central America", poInfo: "6.550.389", link: const ALScreen()),
        CountryCard(counter: 15, icon: "🇬🇩", ccode: "GRD", country: "Grenada", caInfo: "St. George's", coInfo: "Caribbean", poInfo: "113.475", link: const ALScreen()),
        CountryCard(counter: 16, icon: "🇬🇵", ccode: "GLP", country: "Guadeloupe", caInfo: "Basse Terre", coInfo: "Caribbean", poInfo: "399.794", link: const ALScreen()),
        CountryCard(counter: 17, icon: "🇬🇹", ccode: "GTM", country: "Guatemala City", caInfo: "Guatemala City", coInfo: "Central America", poInfo: "18.584.039", link: const ALScreen()),
        CountryCard(counter: 18, icon: "🇭🇹", ccode: "HTI", country: "Haiti", caInfo: "Port-au-Prince", coInfo: "Caribbean", poInfo: "11.680.283", link: const ALScreen()),
        CountryCard(counter: 19, icon: "🇭🇳", ccode: "HND", country: "Honduras", caInfo: "Tegucigalpa", coInfo: "Central America", poInfo: "10.221.247", link: ALScreen()),
        CountryCard(counter: 20, icon: "🇯🇲", ccode: "JAM", country: "Jamaica", caInfo: "Kingston", coInfo: "Caribbean", poInfo: "2.985.094", link: const ALScreen()),
        CountryCard(counter: 21, icon: "🇲🇶", ccode: "MTQ", country: "Martinique", caInfo: "Fort-de-France", coInfo: "Caribbean", poInfo: "374.087", link: ALScreen()),
        CountryCard(counter: 22, icon: "🇲🇸", ccode: "MSR", country: "Montserrat", caInfo: "Plymouth", coInfo: "Caribbean", poInfo: "4.965", link: ALScreen()),
        CountryCard(counter: 23, icon: "🇳🇮", ccode: "NCG", country: "Nicaragua", caInfo: "Managua", coInfo: "Central America", poInfo: "6.779.100", link: const ALScreen()),
        CountryCard(counter: 24, icon: "🇵🇦", ccode: "PAN", country: "Panama", caInfo: "Panama City", coInfo: "Central America", poInfo: "4.446.964", link: const ALScreen()),
        CountryCard(counter: 25, icon: "🇵🇷", ccode: "PRI", country: "Puerto Rico", caInfo: "San Juan", coInfo: "Caribbean", poInfo: "2.829.812", link: const ALScreen()),
        CountryCard(counter: 26, icon: "🇧🇱", ccode: "BLM", country: "Saint Barthélemy", caInfo: "Gustavia", coInfo: "Caribbean", poInfo: "9.945", link: const ALScreen()),
        CountryCard(counter: 27, icon: "🇰🇳", ccode: "KNA", country: "Saint Kitts and Nevis", caInfo: "Basseterre", coInfo: "Caribbean", poInfo: "53.871", link: const ALScreen()),
        CountryCard(counter: 28, icon: "🇱🇨", ccode: "LCA", country: "Saint Lucia", caInfo: "Castries", coInfo: "Caribbean", poInfo: "185.113", link: const ALScreen()),
        CountryCard(counter: 29, icon: "🇲🇫", ccode: "MAF", country: "Saint Martin", caInfo: "Marigot", coInfo: "Caribbean", poInfo: "39.730", link: ALScreen()),
        CountryCard(counter: 30, icon: "🇻🇨", ccode: "VCT", country: "Saint Vincent and Grenadines", caInfo: "Kingstown", coInfo: "Caribbean", poInfo: "111.551", link: ALScreen()),
        CountryCard(counter: 31, icon: "🇸🇽", ccode: "SXM", country: "Sint Maarten", caInfo: "Philipsburg", coInfo: "Caribbean", poInfo: "43.966", link: ALScreen()),
        CountryCard(counter: 32, icon: "🇹🇹", ccode: "TTO", country: "Trinidad and Tobago", caInfo: "Port of Spain", coInfo: "Caribbean", poInfo: "1.406.585", link: const ALScreen()),
        CountryCard(counter: 33, icon: "🇹🇨", ccode: "TCA", country: "Turks and Caicos Islands", caInfo: "Cockburn Town", coInfo: "Caribbean", poInfo: "39.741", link: ALScreen()),
        CountryCard(counter: 34, icon: "🇻🇮", ccode: "VIR", country: "United States \nVirgin Islands", caInfo: "Charlotte Amalie", coInfo: "Caribbean", poInfo: "103.971", link: const ALScreen()),
      ],
    );
  }
}

class SAScreen extends StatefulWidget{
  const SAScreen();

  @override
  SACountries createState() => SACountries();
}

class SACountries extends State<SAScreen> {

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5,
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 5.0,
      scrollDirection: Axis.vertical,
      children: [
        // ignore: prefer_const_constructors
        CountryCard(counter: 1, icon: "🇦🇷", ccode: "ARG", country: "Argentina", caInfo: "Buenos Aires", coInfo: "South America", poInfo: "46.010.234", link: const ALScreen()),
        CountryCard(counter: 2, icon: "🇧🇴", ccode: "BOL", country: "Bolivia", caInfo: "La Paz", coInfo: "South America", poInfo: "11.992.656", link: const ALScreen()),
        CountryCard(counter: 3, icon: "🇧🇻", ccode: "BVT", country: "Bouvet Island", caInfo: "", coInfo: "South America", poInfo: "0", link: const ALScreen()),
        CountryCard(counter: 4, icon: "🇧🇷", ccode: "BRA", country: "Brazil", caInfo: "Brasília", coInfo: "South America", poInfo: "215.353.593", link: const ALScreen()),
        CountryCard(counter: 5, icon: "🇨🇱", ccode: "CHL", country: "Chile", caInfo: "Santiago", coInfo: "South America", poInfo: "19.250.195", link: const ALScreen()),
        CountryCard(counter: 6, icon: "🇨🇴", ccode: "COL", country: "Colombia", caInfo: "Bogotá", coInfo: "South America", poInfo: "51.512.762", link: const ALScreen()),
        CountryCard(counter: 7, icon: "🇪🇨", ccode: "ECU", country: "Ecuador", caInfo: "Quito", coInfo: "South America", poInfo: "18.113.361", link: const ALScreen()),
        CountryCard(counter: 8, icon: "🇫🇰", ccode: "FLK", country: "Falkland Islands", caInfo: "Stanley", coInfo: "South America", poInfo: "3.539", link: const ALScreen()),
        CountryCard(counter: 9, icon: "🇬🇫", ccode: "GUF", country: "French Guiana", caInfo: "Cayenne", coInfo: "South America", poInfo: "314.169", link: const ALScreen()),
        CountryCard(counter: 10, icon: "🇬🇾", ccode: "GUY", country: "Guyana", caInfo: "Georgetown", coInfo: "South America", poInfo: "794.045", link: const ALScreen()),
        CountryCard(counter: 11, icon: "🇵🇾", ccode: "PRY", country: "Paraguay", caInfo: "Asunción", coInfo: "South America", poInfo: "7.305.843", link: const ALScreen()),
        CountryCard(counter: 12, icon: "🇵🇪", ccode: "PER", country: "Peru", caInfo: "Lima", coInfo: "South America", poInfo: "33.684.208", link: const ALScreen()),
        CountryCard(counter: 13, icon: "🇬🇸", ccode: "SGS", country: "South Georgia and the South Sandwich Islands", caInfo: "King Edward Point", coInfo: "South America", poInfo: "30", link: const ALScreen()),
        CountryCard(counter: 14, icon: "🇸🇷", ccode: "SUR", country: "Surinam", caInfo: "Paramaribo", coInfo: "South America", poInfo: "596.831", link: const ALScreen()),
        CountryCard(counter: 15, icon: "🇺🇾", ccode: "URY", country: "Uruguay", caInfo: "Montevideo", coInfo: "South America", poInfo: "3.496.016", link: const ALScreen()),
        CountryCard(counter: 16, icon: "🇻🇪", ccode: "VEN", country: "Venezuela", caInfo: "Caracas", coInfo: "South America", poInfo: "29.266.991", link: const ALScreen()),
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
      color = Colors.red[100];
    }
    else if (counter%5 == 2){
      color = Colors.red[300];
    }
    else if (counter%5 == 3){
      color = Colors.red;
    }
    else if (counter%5 == 4){
      color = Colors.red[700];
    }
    else {
      color = Colors.red[900];
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
              primary: Colors.red[900]
            ),
          )
        ],
      )
    );
  }
}