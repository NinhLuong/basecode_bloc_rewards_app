import 'package:magic_rewards/config/enums/app_languages.dart';

extension StringToAppLanguage on String {
  // TODO: Customize app button decoration properties here

  AppLanguages get toAppLanguage {
    switch (this) {
      case 'vi':
        return AppLanguages.vietnam;
      case 'en':
        return AppLanguages.english;
      default:
        throw "No Such Language";
    }
  }
}
