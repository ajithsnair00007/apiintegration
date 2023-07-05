import 'package:api_integration_task/Screens/countryDetails.dart';
import 'package:api_integration_task/provider/countryProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/homescreen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return CountryProvider();
        
      },
      child:   MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/home',
          routes: {
            '/home':(context) =>const  HomeScreen(),
            '/details':(context) =>const  CountryDetails(),
          },
          home: HomeScreen(),
        ),
      
        
      
    );
  }
}