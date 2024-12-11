import 'package:crypto_wallet_app/constants/utils/exports.dart';
import 'package:crypto_wallet_app/view/auth_screen/authentication_screen.dart/registration_page.dart';

class ScreenRoutes {
  static const String onboarding = "onboarding";
  static const String loginScreen = "loginScreen"; 
 static const String registerScreen = "registerScreen"; 
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onboarding:
        return MaterialPageRoute(
            builder: (BuildContext context) => const OnboardingScreen());

      case loginScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginNodeXScreen());

              case registerScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const RegistrationNodeXScreen());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}
