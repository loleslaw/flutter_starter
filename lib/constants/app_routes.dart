import 'package:get/get.dart';
import '../ui/ui.dart';
import '../ui/auth/auth.dart';
import 'package:enum_to_string/enum_to_string.dart';


enum Pages {splash, signin, signup, home, settings, reset_password, update_profile }

String e2s(Pages pages) {
  final str = '/' + EnumToString.convertToString(pages);
  print(str);
  return str;

}

class AppRoutes {
  AppRoutes._();
  static final routes =[
    GetPage(name: e2s(Pages.splash), page: () => SplashUI()),
    GetPage(name: e2s(Pages.signin), page: () => SignInUI()),
    GetPage(name: e2s(Pages.signup), page: () => SignUpUI()),
    GetPage(name: e2s(Pages.home), page: () => HomeUI()),
    GetPage(name: e2s(Pages.settings), page: ()=> SettingsUI()),
    GetPage(name: e2s(Pages.reset_password), page: () => ResetPasswordUI()),
    GetPage(name: e2s(Pages.update_profile), page: () => UpdateProfileUI())

      ];
    }
    


/*


class AppRoutes {
  AppRoutes._(); //this is to prevent anyone from instantiating this object
  static final routes = [
    GetPage(name: '/', page: () => SplashUI()),
    GetPage(name: '/signin', page: () => SignInUI()),
    GetPage(name: '/signup', page: () => SignUpUI()),
    GetPage(name: '/home', page: () => HomeUI()),
    GetPage(name: '/settings', page: () => SettingsUI()),
    GetPage(name: '/reset-password', page: () => ResetPasswordUI()),
    GetPage(name: '/update-profile', page: () => UpdateProfileUI()),
  ];
}


*/