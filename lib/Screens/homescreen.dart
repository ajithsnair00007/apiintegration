// import 'package:api_integration_task/model/countryModel.dart';
// import 'package:api_integration_task/services/apiServices.dart';

import 'package:api_integration_task/provider/countryProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
    // List countrylist =[] ;
  @override
  // void initState() {
  //   // WidgetsBinding.instance.addPostFrameCallback((timeStamp) { 
  //   //   getCountryList();
  //   // });
  //   super.initState();
  //   //  getCountryList();
  //    Provider.of<CountryProvider>(context).getCountryList();
    
  // }
  //  Future<List<Countrydetails>?> getCountryList() async{
  //   return countrylist= (await ApiServices().getCountry())!;
  //  }
  

  // void getCountryList() async{
  //   countrylist = await ApiServices().getCountry();
  //   //  print(countrylist);
  //   setState(() {
      
  //   });
    
  //   //Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
   
  // }

  @override
  Widget build(BuildContext context) {
    final countryprovider = Provider.of<CountryProvider>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Country Details',
          style: TextStyle(
            color: Colors.white,
          ),),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body:
        // countrylist == null || countrylist==[] ?
        //        const Center(
        //          child: CircularProgressIndicator(),
        //        ):
        
              FutureBuilder(
                future: countryprovider.getCountryList(),
                builder: (context, snapshot) {
                  if(snapshot.hasData){
                    final country = countryprovider.countrylist;
                    return  ListView.builder(
                    
                  itemCount: country.length,
                  itemBuilder:(context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        
                        tileColor: const Color.fromARGB(255, 241, 179, 226),
                        
                        title: Text('CounrtyName:${country[index].name.common},',
                               style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey
                               ),),
                        subtitle: Text('OffName: ${country[index].name.official}',
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 10, 126, 221),
                                  fontWeight: FontWeight.bold,
                               ),
                               ),
                        onTap: (){
                          Navigator.pushNamed(context,'/details',
                                arguments: country[index] );
                        },
                                  
                      ),
                    );
                  },
                  );
                  }else {
                     return const Center(child:  CircularProgressIndicator()); 
                  }
                },
               
              )
        
      ),
    );
  }
}