import 'package:flutter/material.dart';
import 'package:getx_and_mvvm/res/colors/app_color.dart';


class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
    this.buttonColor = AppColor.primaryColor,
    this.textColor = AppColor.primaryTextColor,
    required this.title,
    required this.onPress,
    this.width = 50,
    this.height = 60,
    this.loading = false,

  });

  final bool loading;
  final String title;
  final double height,width;
  final VoidCallback onPress;
  final Color textColor,buttonColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: loading ? const Center(child: CircularProgressIndicator()) :
        Center(child: Text(title,style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),),),
      ),
    );
  }
}
