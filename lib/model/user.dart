import 'package:apihandling/model/user_dob.dart';
import 'package:apihandling/model/user_location.dart';
import 'package:apihandling/model/user_picture.dart';

import 'package:apihandling/model/user_name.dart';

class User {
  final String gender;
  final String email;
  final String phone;
  final String nat;
  final String cell;
  final UserName name;
  final UserDob dob;
  final UserLocation location;
  final UserPicture picture;

  User(
      {required this.gender,
      required this.email,
      required this.phone,
      required this.nat,
      required this.cell,
      required this.name,
      required this.dob,
      required this.location,
      required this.picture});

  factory User.fromMap(Map<String, dynamic> e) {
    final name = UserName.fromMap(e['name']);
    final dob = UserDob.fromMap(e['dob']);
    final location = UserLocation.fromMap(e['location']);
    final Picture = UserPicture.fromMap(e['picture']);
    return User(
      gender: e['gender'],
      email: e['email'],
      phone: e['phone'],
      nat: e['nat'],
      cell: e['cell'],
      name: name,
      dob: dob,
      location: location,
      picture: Picture,
    );
  }

  String get fullName {
    return '${name.title} ${name.first} ${name.last}';
  }
}
