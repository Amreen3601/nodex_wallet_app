import 'package:crypto_wallet_app/constants/utils/app_colors.dart';
import 'package:crypto_wallet_app/constants/utils/exports.dart';

class CustomLine extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  CustomLine({
    Key? key,
    this.width = 120.0,
    this.height = 4.0,
    this.color = AppColors.customBlack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
    );
  }
}
