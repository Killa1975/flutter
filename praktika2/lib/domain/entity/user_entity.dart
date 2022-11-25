class UserEntity{
  late int id;
  final String login;
  final String FIO;
  final String password;
  final int adres;
  
  UserEntity({
    required this.id,
    required this.login,
    required this.FIO,
    required this.adres,
    required this.password,
    });
}