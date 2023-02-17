import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:http/http.dart' as http;

mixin DoSomethingMixin {
  Future<String> getFromAPI(String urlToParse, String key, [characterName]) async {
    try {
      final url = Uri.parse(urlToParse);  
      final res = await http.get(url, headers: { 
      HttpHeaders.authorizationHeader: 'Bearer 2yfELIG7x8vXKpPhkuPI '
      });

      final data = jsonDecode(res.body) as Map<String, dynamic>;

      if(key == '_id'){
        for (int i = 0; i < data['docs'].length; i++) {
          if (data['docs'][i]['name'] == characterName){
            return data['docs'][i][key];
          }
        }
      }
      Random random = new Random();
      return(data['docs'][random.nextInt(data['docs'].length)][key]);
    } catch(e) {
      return "There is nothing for you here.\nError: $e.\nYou probably made a typo, check if the name you wrote was correct.";
    }
  }
}