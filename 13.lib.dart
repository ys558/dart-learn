import 'dart:io';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

_getDataFromZhihu() async {
  var httpClient = new HttpClient();
  var uri = new Uri.http('news-at.zhihu.com', '/api/3/stories/latest');
  var request = await httpClient.getUrl(uri);
  var response = await request.close();
  return await response.transform(convert.utf8.decoder).join(' ');
}
main(List<String> args) async {
  var result = await _getDataFromZhihu();
  print(result);


    // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  var url =
      Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
