import 'package:crypto_wallet_app/constants/utils/exports.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final String? Function(String?) validator;
  final IconData? suffixIcon;
  final bool isPassword;
  final VoidCallback? onSuffixIconTap;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    required this.validator,
    this.suffixIcon,
    this.isPassword = false,
    this.onSuffixIconTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      style: const TextStyle(color: AppColors.whiteOpacity90),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: AppColors.lightGrey),
        filled: true,
        fillColor: AppColors.grey900,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.primaryColor),
        ),
        suffixIcon: suffixIcon != null
            ? IconButton(
                icon: Icon(
                  suffixIcon,
                  color: AppColors.lightGrey,
                ),
                onPressed: onSuffixIconTap,
              )
            : null,
      ),
      onChanged: (value) {
        final errorText = validator(value);

        if (errorText != null) {
          (context as Element).markNeedsBuild();
        }
      },
    );
  }
}
