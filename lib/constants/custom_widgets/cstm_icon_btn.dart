import 'package:crypto_wallet_app/constants/utils/exports.dart';

class CustomSocialIconButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color iconColor;
  final VoidCallback onPressed;

  const CustomSocialIconButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.iconColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.grey900,
        foregroundColor: iconColor,
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 90),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      icon: Icon(
        icon,
        color: iconColor,
      ),
      label: Text(
        text,
        style:
            MyTextStyles.medium(color: AppColors.primaryColor, fontSize: 12.sp),
      ),
    );
  }
}
