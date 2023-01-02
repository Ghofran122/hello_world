import 'package:hello_world/config/server_config.dart';
import 'package:hello_world/models/info_add.dart';
import 'package:http/http.dart' as http;

class AddInformationService{

  var url =Uri.parse(ServerConfig.domainNameServer + ServerConfig.SigninUser);

  addinfo(AddInformationModels AddInfoModels) /*async*/ {
    var response = /*await*/ http.post(
      url,
      headers: {

      },
      body: {
        /*'email': AddInformationModels.email,
        'email': AddInformationModels.password,*/
      },
    );
    /*print(response.statusCode);
    print(response.body);*/
  }
}