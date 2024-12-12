import 'package:crypto_wallet_app/constants/utils/exports.dart';

class CustomSocialIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final Color iconColor;
  final String label;
  final Color backgroundColor;
  final Color textColor;
  final EdgeInsets padding;

  const CustomSocialIconButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.iconColor,
    required this.label,
    this.backgroundColor = AppColors.grey900,
    this.textColor = AppColors.primaryColor,
    this.padding = const EdgeInsets.symmetric(horizontal: 80, vertical: 12),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: iconColor,
      ),
      label: Text(label,
          style: MyTextStyles.medium(
              fontSize: 12.sp, color: AppColors.whiteOpacity90)),
    ).center;
  }
}
