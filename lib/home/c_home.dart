import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:todo_app/home/model/m_todo.dart';

class HomeController {
  TodoList? list;

  Future<TodoList> fetchData(limit, skip) async {
    {
      try {
        final res = await http.get(
          Uri.parse('https://dummyjson.com/todos?limit=$limit&skip=$skip'),
        );
        // var res = await http.post(
        //   Uri.parse(_loginUrl),
        //   headers: {'Content-Type': 'application/json'},
        //   body: jsonEncode({
        //     'username': 'emilys', // username,
        //     'password': 'emilyspass', //password,
        //     'expiresInMins': 30,
        //   }),
        // );

        if (res.statusCode == 200) {
          final data = jsonDecode(res.body);
          list = TodoList.fromJson(data);

          // id = json['id'].toString();
        }
      } catch (_) {
      } finally {
        list ?? '';
      }
      return list!;
    }
  }
}
