import 'package:api_integration_task/model/countryModel.dart';
import 'package:api_integration_task/services/apiServices.dart';
import 'package:flutter/material.dart';

class CountryProvider with ChangeNotifier{
  
  List<Countrydetails> _countrylist =[];

  List<Countrydetails> get countrylist => _countrylist;

  set countrylist(List<Countrydetails> value) {
    _countrylist = value;
    notifyListeners();

  }
  //List<Countrydetails> get _countrylist => countrylist;

   Future<List<Countrydetails>?>  getCountryList() async{

   
    
    return countrylist= (await ApiServices().getCountry())!;
    
   
   }
   
    
    
    }