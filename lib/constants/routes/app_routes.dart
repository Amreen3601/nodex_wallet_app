import 'package:crypto_wallet_app/constants/utils/exports.dart';

class ScreenRoutes {
  static const String onboarding = "onboarding";
  static const String loginScreen = "loginScreen";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onboarding:
        return MaterialPageRoute(
            builder: (BuildContext context) => const OnboardingScreen());

      case loginScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginNodeXScreen());

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
