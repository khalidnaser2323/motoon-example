import 'package:motoon_api_example/models/user.dart';
import 'package:motoon_api_example/utilities/constants.dart';
import 'package:motoon_api_example/utilities/http_wrapper.dart';
import 'dart:convert';

class Users {
  String endPoint = "users";
  Future<List<User>> getUsers() async {
    try {
      String response = await HttpWrapper().get(Constants.BASE_URL + endPoint);
      Map jsonResponse = jsonDecode(response);
      Iterable usersIterable = jsonResponse['data'];
      List<User> usersList =
          usersIterable.map((jsonItem) => User.fromJson(jsonItem)).toList();
      return usersList;
    } catch (error) {
      throw Exception("Something wrong happened");
    }
  }
}
