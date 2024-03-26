import 'package:flutter/material.dart';

class MapMethodExample extends StatelessWidget { 
  // Define a list of maps containing 
  // country and capital information 
  final List<Map<String, String>> countriesData = [ 
    {"country": "India", "capital": "New Delhi"}, 
    {"country": "USA", "capital": "Washington, D.C."}, 
    {"country": "Canada", "capital": "Ottawa"}, 
    {"country": "Germany", "capital": "Berlin"}, 
    {"country": "France", "capital": "Paris"}, 
    {"country": "Japan", "capital": "Tokyo"}, 
  ]; 
  
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      body: ListView( 
        children: countriesData.map((countryInfo) { 
          final String? country = countryInfo['country']; 
          final String? capital = countryInfo['capital']; 
          return ListTile( 
            title: Text(country!), 
            subtitle: Text('Capital: $capital'), 
          ); 
        }).toList(), 
      ), 
    ); 
  } 
} 