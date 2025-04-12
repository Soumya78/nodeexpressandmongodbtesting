import 'dart:convert';

import 'package:googlepayclone/model/datamodel/moviemodel.dart';
import 'package:http/http.dart' as http ;
import 'dart:developer' as devtools show log;
extension Log on Object{
void log () => devtools.log(toString());
}

Future <List<MovieModel>>  getdata()  async{
  String  url ="http://localhost:3000/";
  Uri baseurl = Uri.parse(url);
  try{
    final response = await http.get(baseurl);
    if(response.statusCode == 200){
     final List deoced = jsonDecode(response.body);
    // print(response.body);
     return deoced.map((e) => MovieModel.fromJson(e)).toList();
    }else{

      throw Exception("Failed to load data");
    }

  }catch(e){
 devtools.log(e.toString());
 throw Exception("Error occured");
   }
}
