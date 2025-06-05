import 'package:get/get.dart';
import 'package:getx_multi_lang/app/translations/en_US.dart';
import 'package:getx_multi_lang/app/translations/es_ES.dart';
import 'package:getx_multi_lang/app/translations/fr_FR.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUS,
        'es_ES': esES,
        'fr_FR': frFR,
      };
}