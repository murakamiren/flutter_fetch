import 'dart:convert';
import 'package:flutter_fetch/classes/classes.dart';
import 'package:flutter_fetch/utils/constant.dart';
import 'package:http/http.dart' as http;

Future<List<Post>> fetchPost() async {
  final res =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

  if (res.statusCode == 200) {
    final List<dynamic> decodedJson =
        jsonDecode(utf8.decode(res.body.runes.toList()))["data"];
    List<Post> postData = decodedJson.map((d) => Post.fromJson(d)).toList();
    return postData;
  } else {
    throw Exception("failed");
  }
}
