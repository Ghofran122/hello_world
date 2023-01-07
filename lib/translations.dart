import 'package:get/get.dart';
import 'package:hello_world/utils/ar.dart';
import 'package:hello_world/utils/en.dart';

class Translation extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en' : en,
    'ar' : ar,
  };

}