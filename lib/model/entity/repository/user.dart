import '/model/entity/user.dart';

class UserRepository{

  final _users = <String, UserEntity>{};

  UserRepository (){
    _users["na@c.com"]= UserEntity(
      email: "na@c.com", 
      name: "natalia", 
      address: "cra 2.23", 
      password: "1233333", 
      isAdmin: true, 
      phone: "23443");
  }
  UserEntity findByEmail(String email) { 
    return UserEntity();
  }
}