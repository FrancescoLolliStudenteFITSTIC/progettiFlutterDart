import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:primoprogetto/QuoteService.dart';

var newQuote = new QuoteService();

void main(List<String> arguments) async {
   print("Enter the name of one of the charatcters from LOTR");
   String characterName = stdin.readLineSync() ?? ""; // will return empty String if method readLineSync() returns null.
   var finalQuote = await newQuote.getQuote(characterName);
  print(finalQuote);
}
