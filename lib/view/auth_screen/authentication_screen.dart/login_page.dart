import 'package:crypto_wallet_app/constants/utils/exports.dart';

class LoginNodeXScreen extends StatelessWidget {
  const LoginNodeXScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      appBar: CustomAppBar(onPressed: () {
        Navigator.pop(context);
      }),
      body: Consumer<AuthProvider>(
        builder: (context, authProvider, child) {
          return SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  20.heightBox,
                  'Login NodeX'
                      .toText(textStyle: MyTextStyles.bold(fontSize: 27))
                      .center,
                  40.heightBox,
                  CustomSocialIconButton(
                    onPressed: () {},
                    icon: Icons.facebook,
                    iconColor: AppColors.facebookBlue,
                    label: 'Continue with Facebook',
                  ),
                  10.heightBox,
                  CustomSocialIconButton(
                    onPressed: () {},
                    icon: Icons.g_mobiledata,
                    iconColor: AppColors.googleColor,
                    label: 'Continue with Google',
                    padding: const EdgeInsets.symmetric(
                        horizontal: 90, vertical: 12),
                  ),
                  10.heightBox,
                  CustomSocialIconButton(
                    onPressed: () {},
                    icon: Icons.apple,
                    iconColor: AppColors.primaryColor,
                    label: 'Continue with Apple',
                    padding: const EdgeInsets.symmetric(
                        horizontal: 92, vertical: 12),
                  ),
                  30.heightBox,
                  Row(
                    children: [
                      Divider(color: AppColors.customGrey).expanded,
                      'Or'
                          .toText(
                            textStyle: MyTextStyles.regular(
                                color: AppColors.lightGrey),
                          )
                          .paddingSymmetric(horizontal: 10),
                      Divider(color: AppColors.customGrey).expanded,
                    ],
                  ),
                  20.heightBox,
                  'Email'.toText(
                    textStyle: MyTextStyles.medium(color: AppColors.lightGrey),
                  ),
                  3.heightBox,
                  CustomTextField(
                    controller: authProvider.loginemailController,
                    hintText: 'Example@gmail',
                    validator: (value) {
                      return Validation.emailValidation(value);
                    },
                  ),
                  10.heightBox,
                  'Password'.toText(
                    textStyle: MyTextStyles.medium(color: AppColors.lightGrey),
                  ),
                  3.heightBox,
                  CustomTextField(
                    controller: authProvider.loginpasswordController,
                    hintText: 'Password',
                    obscureText: !authProvider.isPasswordVisible,
                    suffixIcon: authProvider.isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    onSuffixIconTap: () {
                      authProvider.passwordVisibility();
                    },
                    validator: (value) {
                      return Validation.passwordValidation(value);
                    },
                  ),
                  TextButton(
                          onPressed: () {
                            // Forgot password functionality
                          },
                          child: 'Forgot Password?'.toText(
                              textStyle: MyTextStyles.regular(
                                  color: AppColors.lightGrey, fontSize: 12.sp)))
                      .align(Alignment.centerLeft),
                  20.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      'Already have a Account? '.toText(
                          textStyle: MyTextStyles.regular(
                              color: AppColors.lightGrey, fontSize: 12.sp)),
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, ScreenRoutes.registerScreen);
                          },
                          child: 'Sign up'.toText(
                              textStyle: MyTextStyles.medium(
                                  color: AppColors.whiteOpacity90))),
                    ],
                  ).center,
                  150.heightBox,
                  CustomLine().center,
                  10.heightBox,
                ],
              ).paddingSymmetric(horizontal: 16),
            ),
          );
        },
      ),
    );
  }
}
