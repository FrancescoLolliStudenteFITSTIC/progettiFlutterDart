import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:http/http.dart' as http;

import 'apiDart/api_key.dart';

class QuoteService {
  
  Future<String> getQuote(String nomePersonaggio) async{
  final url = Uri.parse('https://the-one-api.dev/v2/quote?sort=character?name=$nomePersonaggio');
  
  final res = await http.get(url, headers: { 
    HttpHeaders.authorizationHeader: 'Bearer $ApiKey '
  });
  
  final data = jsonDecode(res.body) as Map<String, dynamic>;
  Random random = new Random();
  return(data['docs'][random.nextInt(100)]['dialog']);
  }
}