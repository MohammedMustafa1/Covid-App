
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_and_mvvm/res/colors/app_color.dart';

class GeneralExceptionWidget extends StatefulWidget {
  final VoidCallback onPress;
  const GeneralExceptionWidget({super.key, required this.onPress});

  @override
  State<GeneralExceptionWidget> createState() => _GeneralExceptionWidgetState();
}

class _GeneralExceptionWidgetState extends State<GeneralExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 50),
      child: Column(
        children: [
          SizedBox(height: height * .15,),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Icon(Icons.cloud_off, color: AppColor.redColor,size: 50,),
          ),
          Text('general_exception'.tr, textAlign: TextAlign.center,),
          SizedBox(height: height * .15,),
          InkWell(
            onTap: widget.onPress,
            child: Container(
              height: 44,
              width: 160,
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(child: Text('Retry', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),)),
            ),
          ),
        ],
      ),
    );
  }
}
