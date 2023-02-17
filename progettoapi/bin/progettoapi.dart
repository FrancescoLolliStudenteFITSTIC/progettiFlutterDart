import 'dart:io';
import 'package:progettoapi/quoteService.dart';
final quote = QuoteService();

void main(List<String> arguments) async {
  print("Enter the name of one of the charatcters from LOTR");
  String characterName = stdin.readLineSync() ?? "";
  String characterID = await quote.getCharacter(characterName);
  var finalQuote = await quote.getQuote(characterID);
  print('LOTR quote: ${finalQuote}');
}
