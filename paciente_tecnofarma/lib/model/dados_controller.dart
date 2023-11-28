import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/dados.dart';

const String url = "https://www.breakingbadapi.com/api/characters";

List<dados> parsedados(String responseBody){
  var list = json.decode(responseBody) as List<dynamic>;
  var dadosP = list.map((e) => dados.fromJson(e)).toList();
  return dadosP;

  Future<List<dados>> fetchdadosP() async{
    final http.Response response = await http .get(Uri.parse(url));

    if (response.statusCode == 200){
      return compute(parsedados, response.body);
    }else{
      throw Exception(response.statusCode);
    }
  }
}