import 'package:green_market/constants/enum/gender.dart';

class User {
  final String name;
  final int age;
  final Gender gender;

  User({
    required this.name,
    required this.age,
    required this.gender,
  });
}
