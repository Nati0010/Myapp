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
      phone: "234432323");
    
    _users["Lu@c.com"]= UserEntity(
      email: "na@c.com", 
      name: "Laura", 
      address: "cra 33#23", 
      password: "1222223", 
      isAdmin: false, 
      phone: "2344323232");
  }
  UserEntity findByEmail(String email) { 

      var user= _users [email];
      if (user==null){
        throw Exception("El usuario no existe");
      }
    return user;

  }
}