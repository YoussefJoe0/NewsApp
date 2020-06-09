import 'package:http/http.dart' as http;
import 'dart:convert';
import '../utilities/api_utilities.dart';
import 'package:news_app/models/authors.dart';

class AuthorsAPI {
  Future<List<Authors>> fetchAllAuthors() async {
    List<Authors> authors = List<Authors>();

    String allAuthorsAPI = base_api + all_Authors_API;

    var response = await http.get(allAuthorsAPI);

    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      var data = jsonData['data'];

      for (var item in data) {
        Authors author = Authors(
          item['id'].toString(),
           item['name'].toString(),
            item['email'].toString(),
             item['avatar'].toString()
             );
        authors.add(author);
      }
    }

    return authors;
  }
}
