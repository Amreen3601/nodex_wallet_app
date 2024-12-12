import 'package:crypto_wallet_app/constants/utils/exports.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: Consumer<AuthProvider>(builder: (context, authProvider, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                authProvider.currentTitle.toText(
                    textAlign: TextAlign.center,
                    textStyle: MyTextStyles.bold()),
                12.heightBox,
                authProvider.currentDescription.toText(
                    textAlign: TextAlign.center,
                    textStyle: MyTextStyles.regular(fontSize: 18)),
                40.heightBox,
                CustomElevatedButton(
                  text: authProvider.currentButtonText,
                  onPressed: () => authProvider.nextStep(context),
                ),
                18.heightBox,
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "By creating an account, you're agree to our ",
                    style: MyTextStyles.regular(fontSize: 11.sp),
                    children: [
                      TextSpan(
                        text: "Privacy Policy\n",
                        style: MyTextStyles.medium(
                          color: AppColors.whiteOpacity90,
                          fontSize: 10.sp,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap =
                              () => authProvider.onPrivacyPolicyTap(context),
                      ),
                      TextSpan(
                        text: "and ",
                        style: MyTextStyles.regular(fontSize: 11.sp),
                      ),
                      TextSpan(
                        text: "Terms of Use",
                        style: MyTextStyles.medium(
                          color: AppColors.whiteOpacity90,
                          fontSize: 10.sp,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => authProvider.onTermsOfUseTap(context),
                      ),
                    ],
                  ),
                ),
              ],
            ).expanded,
            CustomLine(),
            10.heightBox
          ],
        ).paddingSymmetric(horizontal: 15.sp);
      }),
    );
  }
}
