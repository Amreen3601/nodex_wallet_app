import 'package:crypto_wallet_app/constants/utils/exports.dart';

class AppProviders {
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (_) => AuthProvider()),
  ];
}
