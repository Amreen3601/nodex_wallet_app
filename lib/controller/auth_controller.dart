import 'package:crypto_wallet_app/constants/utils/exports.dart';

class AuthProvider extends ChangeNotifier {
  TextEditingController loginemailController = TextEditingController();
  TextEditingController loginpasswordController = TextEditingController();
  TextEditingController RegNameController = TextEditingController();
  TextEditingController RegemailController = TextEditingController();
  TextEditingController RegPasswordController = TextEditingController();
  TextEditingController RegConfirmPassController = TextEditingController();
  TextEditingController RegPhoneController = TextEditingController();

  int _currentStep = 0;

  final onboardingContent = OnboardingContent.onboardingContent;
  int get currentStep => _currentStep;
  String get currentTitle => onboardingContent[_currentStep]['title']!;
  String get currentDescription =>
      onboardingContent[_currentStep]['description']!;
  String get currentButtonText =>
      onboardingContent[_currentStep]['buttonText']!;

  void nextStep(BuildContext context) {
    if (_currentStep < onboardingContent.length - 1) {
      _currentStep++;
      notifyListeners();
    } else {
      Navigator.pushNamed(context, ScreenRoutes.loginScreen);
    }
  }

  void onPrivacyPolicyTap(BuildContext context) {
    print("Privacy Policy tapped");
  }

  void onTermsOfUseTap(BuildContext context) {
    print("Terms of Use tapped");
  }

  //=================================================================//
  bool _isPasswordVisible = false;

  bool get isPasswordVisible => _isPasswordVisible;

  void passwordVisibility() {
    _isPasswordVisible = !_isPasswordVisible;
    notifyListeners();
  }

   bool isRemember = false;
  //===Remember_Me===//
  
  rememberMe() {
    isRemember = !isRemember;
    notifyListeners();
  }
}
