import '/controller/request/login.dart';

import '/model/entity/repository/user.dart';

class LoginController {
  late final UserRepository _userRepository;

  LoginController (){
    _userRepository = UserRepository();
  }
  
  String validateEmailPassword(LoginRequest request) {
    //consultar el usuario que tenga el correo dado
    //verificar si la clave es igual a la que esta en la BD
    //si es igual, entonces navegar a la pagina principal
    var user=_userRepository.findByEmail(request.email);
    if (user.password!=request.password){
      throw Exception ("La clave es incorrecta"); 
    }
    return user.name!;
  }
}