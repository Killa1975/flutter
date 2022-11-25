import 'package:praktika2/domain/entity/user_entity.dart';

class User extends UserEntity{
late int id;
final String login;
final String FIO;
final String password;
final int adres;

  User({
    required this.id,
    required this.login,
    required this.FIO,
    required this.password,
    required this.adres
    }) :super(
      id:id,
      login : login, 
      FIO:FIO,
      password:password,
      adres: adres
    );

  Map<String, dynamic> toMap(){
    return {
      'login':login, 
      'FIO':FIO,
      'password':password, 
      'adres':adres
      };
  }

  factory User.toFromMap(Map<String, dynamic> json)
  {
    return User(
      id: json ['id'],
      login: json ['role'],
      FIO:json ['FIO'],
      password:json ['password'],
      adres:json ['adres'],
      );
  }
}