import 'package:get/get.dart';
import 'package:hello_world/config/server_config.dart';
import 'package:hello_world/models/signup.dart';
import 'package:http/http.dart' as http;

class SignupService{
  
  var url =Uri.parse(ServerConfig.domainNameServer + ServerConfig.SignupUser);
  
  signup(SignupModels SignUpModels) async {
    var response = await http.post(
      url,
      headers: {

      },
      body: {
        'name': SignUpModels.name,
        'email': SignUpModels.email,
        'email': SignUpModels.password,
        'password_confirmation': SignUpModels.passwordConfirm,
      },
    );
    print(response.statusCode);
    print(response.body);
  }
}