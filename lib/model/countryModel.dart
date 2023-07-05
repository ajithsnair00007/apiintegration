// To parse this JSON data, do
//
//     final countrydetails = countrydetailsFromJson(jsonString);


import 'dart:convert';

List<Countrydetails> countrydetailsFromJson(String str) => List<Countrydetails>.from(json.decode(str).map((x) => Countrydetails.fromJson(x)));

String countrydetailsToJson(List<Countrydetails> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Countrydetails {
    Name name;
    //List<String>? capital;
    List<double> latlng;
    bool landlocked;
    double area;
    Flags flags;

    Countrydetails({
        required this.name,
        //this.capital,
        required this.latlng,
        required this.landlocked,
        required this.area,
        required this.flags,
    });

    factory Countrydetails.fromJson(Map<String, dynamic> json) => Countrydetails(
        name: Name.fromJson(json["name"]),
        //capital: List<String>.from(json["capital"].map((x) => x)),
        latlng: List<double>.from(json["latlng"].map((x) => x)),
        landlocked: json["landlocked"],
        area: json["area"],
        flags: Flags.fromJson(json["flags"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        //"capital": List<dynamic>.from(capital!.map((x) => x)),
        "latlng": List<dynamic>.from(latlng.map((x) => x)),
        "landlocked": landlocked,
        "area": area,
        "flags": flags.toJson(),
    };
}

class Flags {
    String png;
    String svg;
    String? alt;

    Flags({
        required this.png,
        required this.svg,
        this.alt,
    });

    factory Flags.fromJson(Map<String, dynamic> json) => Flags(
        png: json["png"],
        svg: json["svg"],
        alt: json["alt"],
    );

    Map<String, dynamic> toJson() => {
        "png": png,
        "svg": svg,
        "alt": alt,
    };
}

class Name {
    String common;
    String official;
    

    Name({
        required this.common,
        required this.official,
       
    });

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        common: json["common"],
        official: json["official"],
    );

    Map<String, dynamic> toJson() => {
        "common": common,
        "official": official,
       
    };
}


