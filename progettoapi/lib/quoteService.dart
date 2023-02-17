import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:http/http.dart' as http ;
import 'package:progettoapi/quoteServiceMixin.dart';

class QuoteService with DoSomethingMixin {
  Future<String> getCharacter([characterName]) async {
    return getFromAPI('https://the-one-api.dev/v2/character', '_id', characterName);  
  }

  Future<String> getQuote(String character) async {
    return getFromAPI('https://the-one-api.dev/v2/character/'+ character +'/quote', 'dialog');  
  }
}

//https://the-one-api.dev/v2/character/'+ character +'/quote