import 'dart:convert';
import 'dart:io';

//import 'package:esuno/esuno.dart' as esuno;
import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  getQuote();
}

void getQuote() async{
  final url = Uri.parse('https://the-one-api.dev/v2/quote');
  final res = await http.get(url, headers: { 
    HttpHeaders.authorizationHeader: 'Bearer 2yfELIG7x8vXKpPhkuPI'
  });
  
  final data =jsonDecode(res.body) as Map<String, dynamic>;
  print(data['docs'][76]['dialog']);

}