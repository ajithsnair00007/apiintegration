import 'package:api_integration_task/model/countryModel.dart';
import 'package:flutter/material.dart';

class CountryDetails extends StatefulWidget {
  const CountryDetails({super.key});

  @override
  State<CountryDetails> createState() => _CountryDetailsState();
}

class _CountryDetailsState extends State<CountryDetails> {
  @override
  Widget build(BuildContext context) {

    final country = ModalRoute.of(context)!.settings.arguments as Countrydetails;

    return  SafeArea(child: 
               Scaffold(
                backgroundColor: const Color.fromARGB(255, 11, 155, 228),
                body: Center(child: SizedBox(
                  child: SizedBox(
                     
                     
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(country.name.common,
                             style: const TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 247, 81, 15)
                             ),),
                        Text(country.name.official,
                             style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 142, 247, 4)
                             ),),
                        const SizedBox(
                          height: 100,
                        ),
                        Image.network(country.flags.png),
                        
                      ],
                    ),
                  ),
                )),
               )
               );
  }
}