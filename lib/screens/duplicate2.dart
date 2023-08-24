/*
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rest Api call"),
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            //final color = user.gender == 'male' ? Colors.blue : Colors.green;
            return ListTile(
              title: Text(user.name.first),
              subtitle: Text(user.phone),
              //  tileColor: color,
            );
          }),
      floatingActionButton: FloatingActionButton(onPressed: fetchUsers),
    );
  }

  void fetchUsers() async {
    print("Fetchusers called");
    const url = "https://randomuser.me/api/?results=100";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final json = jsonDecode(response.body);
    final results = json['results'] as List<dynamic>;
    final transformed = results.map((e) {
      final name = UserName(
          title: e['name']['title'],
          first: e['name']['first'],
          last: e['name']['last']);
      return User(
          gender: e['gender'],
          email: e['email'],
          phone: e['phone'],
          nat: e['nat'],
          cell: e['cell'],
          name: name);
    }).toList();
    setState(() {
      users = transformed;
    });

    print("fetchUsers completed");
  }
}


//User.dart

class User {
  final String gender;
  final String email;
  final String phone;
  final String nat;
  final String cell;
  final UserName name;

  User(
      {required this.gender,
      required this.email,
      required this.phone,
      required this.nat,
      required this.cell,
      required this.name});
}

class UserName {
  final String title;
  final String first;
  final String last;

  UserName({required this.title, required this.first, required this.last});
}
*/