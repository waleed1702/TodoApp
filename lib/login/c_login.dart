import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginController {
  var url;
  Future loginUser(
      // {
      // required VoidCallback onInit,
      // required Function(dynamic) onSuccess,
      // required VoidCallback onEnd,
      // }
      ) async {
    url = Uri.parse('https://dummyjson.com/auth/login');
    // Call the onInit callback
    // onInit() => };

    try {
      var response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'username': 'emilys',
          'password': 'emilyspass',
          'expiresInMins': 30, // optional, defaults to 60
        }),
      );

      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body);
        print(jsonResponse);
        // Call the onSuccess callback with the decoded JSON data
        // onSuccess(jsonResponse);
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      print('Request failed with error: $e');
    } finally {
      // Call the onEnd callback
      // onEnd();
    }
  }
}
