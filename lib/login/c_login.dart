import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginController {
  static const String _loginUrl = 'https://dummyjson.com/auth/login';
  String? id;

  Future<String> loginUser(username, password) async {
    {
      onInit() => {};

      try {
        var res = await http.post(
          Uri.parse(_loginUrl),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({
            'username': username, //'emilys'
            'password': password, //'emilyspass'
            'expiresInMins': 30, // optional, defaults to 60
          }),
        );

        if (res.statusCode == 200) {
          var json = jsonDecode(res.body);
          id = json['id'].toString();
        }
      } catch (e) {
        print('Error during login: $e');
        // Handle errors here, like showing a snackbar or retry option
      } finally {
        id = id ?? '';
      }

      return id!;
    }
  }
}
