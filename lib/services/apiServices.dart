// import 'dart:math';


import 'package:api_integration_task/model/countryModel.dart';
import 'package:http/http.dart' as http;


class ApiServices{
  Future <List<Countrydetails>?> getCountry() async{
     List<Countrydetails> countrydetails = [];
    
      var url = Uri.parse('https://restcountries.com/v3.1/all');
      var response = await http.get(url);
      // print(response.body);
      // print(response.statusCode);
      
      if(response.statusCode==200){
          countrydetails = countrydetailsFromJson(response.body);
          
          
      }
     
      
    
    
    
   
     return  countrydetails;
    
    
   
  }
}