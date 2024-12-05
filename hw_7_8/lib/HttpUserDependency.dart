import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:hw_7_8/user_model.dart';
import 'user_dependency.dart';

class HttpUserDependency implements UserDependency {

  @override
  Future<User?> getUser(int id) async {
    // TODO: implement getUser
    final url =  Uri.parse('https://reqres.in/api/users/$id');
    final response = await http.get(url);
    if (response.statusCode != 200) {
      return null;
    }

    Map<String, dynamic> UserDataAsMap = jsonDecode(response.body)['data'];

    return User(
      id: UserDataAsMap['id'],
      email: UserDataAsMap['email'],
      firstName: UserDataAsMap['first_name'],
      lastName: UserDataAsMap['last_name'],
      avatar: UserDataAsMap['avatar'],

    );
  }
}
