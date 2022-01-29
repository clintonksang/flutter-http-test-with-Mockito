import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutterdevtest/constants/constants.dart';
import 'package:flutterdevtest/models/user.dart';
import 'package:http/http.dart' as http;

// Parse to List
// List<User> parseUser(String response) {
//   var list = jsonDecode(response) as List<dynamic>;
//   List<User> users = list.map((user) => User.fromJson(user)).toList();
//   return users;
// }
// A function that converts a response body into a List<User>.
List<User> parseUsers(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<User>((json) => User.fromJson(json)).toList();
}

Future<List<User>> fetchUsers() async {
  final response = await http.get(Uri.parse(userUrl));
  if (response.statusCode == 200) {
    return compute(parseUsers, response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}



// Future<List<User>> fetchUsers(http.Client client) async {
//   final response =
//       await client.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

//   // Use the compute function to run parseUsers in a separate isolate.

//   if (response.statusCode == 200) {
//     compute(parseUsers, response.body);
//   } else {
//     throw Exception('Failed to Load Users');
//   }
  
// }
