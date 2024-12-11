import 'package:crypto_wallet_app/constants/utils/exports.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onPressed;

  const CustomElevatedButton({
    required this.text,
    this.backgroundColor = AppColors.greencolor,
    this.textColor = AppColors.primaryColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        minimumSize: Size(double.infinity, 50),
      ),
      child: Text(
        text,
        style: MyTextStyles.bold(fontSize: 18),
      ),
    );
  }
}
