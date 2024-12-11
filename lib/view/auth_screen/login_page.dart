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
        // Navigator.pushNamed(context, ScreenRoutes.loginScreen,
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
                    icon: Icons.facebook,
                    text: 'Continue with Facebook',
                    iconColor: Colors.blue,
                    onPressed: () {},
                  ),
                  10.heightBox,
                  CustomSocialIconButton(
                    icon: Icons.g_mobiledata,
                    text: 'Continue with Google',
                    iconColor: Colors.red,
                    onPressed: () {},
                  ),
                  10.heightBox,
                  CustomSocialIconButton(
                    icon: Icons.apple,
                    text: 'Continue with Apple',
                    iconColor: Colors.white,
                    onPressed: () {},
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
                    textStyle:
                        MyTextStyles.medium(color: AppColors.primaryColor),
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
                    textStyle:
                        MyTextStyles.medium(color: AppColors.primaryColor),
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
                            // Navigate to Sign up
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
