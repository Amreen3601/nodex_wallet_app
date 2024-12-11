import 'package:crypto_wallet_app/constants/utils/exports.dart';

class RegistrationNodeXScreen extends StatelessWidget {
  const RegistrationNodeXScreen({super.key});

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
                  'Register NodeX'
                      .toText(textStyle: MyTextStyles.bold(fontSize: 27))
                      .center,
                  40.heightBox,
                  'Name'.toText(
                    textStyle: MyTextStyles.medium(color: AppColors.lightGrey),
                  ),
                  3.heightBox,
                  CustomTextField(
                    controller: authProvider.RegNameController,
                    hintText: 'Kiran Shaheen',
                    validator: (value) {
                      return Validation.nameValidation(value);
                    },
                  ),
                  10.heightBox,
                  'Email'.toText(
                    textStyle: MyTextStyles.medium(color: AppColors.lightGrey),
                  ),
                  3.heightBox,
                  CustomTextField(
                    controller: authProvider.RegemailController,
                    hintText: 'Example@gmail',
                    validator: (value) {
                      return Validation.emailValidation(value);
                    },
                  ),
                  10.heightBox,
                  10.heightBox,
                  'Phone Number'.toText(
                    textStyle: MyTextStyles.medium(color: AppColors.lightGrey),
                  ),
                  3.heightBox,
                  CustomTextField(
                    controller: authProvider.RegPhoneController,
                    hintText: '123 456 789',
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      return Validation.phoneValidation(value);
                    },
                  ),
                  10.heightBox,
                  'Password'.toText(
                    textStyle: MyTextStyles.medium(color: AppColors.lightGrey),
                  ),
                  3.heightBox,
                  CustomTextField(
                    controller: authProvider.RegPasswordController,
                    hintText: '6-20 characters',
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
                  10.heightBox,
                  'Confirm Password'.toText(
                    textStyle: MyTextStyles.medium(color: AppColors.lightGrey),
                  ),
                  3.heightBox,
                  CustomTextField(
                    controller: authProvider.RegConfirmPassController,
                    hintText: 'abc@gmail.com',
                    obscureText: !authProvider.isPasswordVisible,
                    suffixIcon: authProvider.isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    onSuffixIconTap: () {
                      authProvider.passwordVisibility();
                    },
                    validator: (value) {
                      return Validation.confirmPasswordValidation(
                          value!, authProvider.RegPasswordController.text);
                    },
                  ),
                  10.heightBox,
                  Wrap(
                    spacing: 6.0,
                    children: [
                      InkWell(
                        onTap: () {
                          authProvider.rememberMe();
                        },
                        child: Icon(
                          authProvider.isRemember
                              ? Icons.check_box
                              : Icons.check_box_outline_blank,
                          color: AppColors.greencolor,
                        ),
                      ),
                      "I agree to\n".toText(
                        textStyle: MyTextStyles.regular(
                          color: AppColors.lightWhite60,
                          fontSize: 11.sp,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: "Terms and condition".toText(
                          textStyle: MyTextStyles.regular(
                            color: AppColors.primaryColor,
                            fontSize: 11.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                  20.heightBox,
                  CustomElevatedButton(
                    text: 'Create an account',
                    onPressed: () => {},
                  ),
                  80.heightBox,
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
