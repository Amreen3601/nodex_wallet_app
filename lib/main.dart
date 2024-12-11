import 'package:crypto_wallet_app/constants/utils/exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 780),
      child: MultiProvider(
        providers: AppProviders.providers,
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: ScreenRoutes.onboarding,
          onGenerateRoute: ScreenRoutes.generateRoute,
        ),
      ),
    );
  }
}
