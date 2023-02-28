import '../../models/user/user.dart';
import '../enum/gender.dart';

class UserData {
  static List<User> list = [
    User(name: 'Martin', age: 20, gender: Gender.male),
    User(name: 'Sophie', age: 25, gender: Gender.female),
    User(name: 'John', age: 30, gender: Gender.male),
    User(name: 'Emily', age: 22, gender: Gender.female),
    User(name: 'Alex', age: 27, gender: Gender.male),
    User(name: 'Laura', age: 24, gender: Gender.female),
    User(name: 'David', age: 35, gender: Gender.male),
    User(name: 'Megan', age: 29, gender: Gender.female)
  ];
}
