import 'package:crypto_wallet_app/constants/utils/exports.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor;
  final Color leadingIconColor;
  final VoidCallback onPressed;

  const CustomAppBar({
    Key? key,
    this.backgroundColor = AppColors.secondaryColor,
    this.leadingIconColor = AppColors.primaryColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: leadingIconColor,
          size: 20,
        ),
        onPressed: onPressed,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
