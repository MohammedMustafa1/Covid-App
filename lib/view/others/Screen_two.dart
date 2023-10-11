import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_and_mvvm/view/others/screen_three.dart';
import 'package:getx_and_mvvm/view_models/others/slider_controller.dart';
import 'package:getx_and_mvvm/view_models/others/switch_controller.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {

  //double opacity = .4;
  SliderController sliderController = Get.put(SliderController());
  //bool notification = false;
  SwitchController switchController = Get.put(SwitchController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('total rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Two'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: TextButton(
                onPressed: () {
                  //Navigator.pop(context);
                  // Get.back();
                  // Get.back();
                  // Get.to(()=>ScreenThree());
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenThree()));
                },
                child: const Text('GOto screen three'),
              ),
            ),
            Obx((){
              return Container(
                height: 200,
                width: 200,
                color: Colors.red.withOpacity(sliderController.opacity.value),
              );
            }),
            Obx((){
              return Slider(
                  value: sliderController.opacity.value,
                  onChanged: (value){
                    sliderController.setOpacity(value);
                    //opacity = value;
                    //setState(() {});
                  }
                  );
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Notifications'),
                Obx((){
                  return Switch(
                    //value: notification,
                      value: switchController.notification.value,
                      onChanged: (value){
                        switchController.setSwitch(value);
                        // notification = value;
                        // setState(() {});
                      });
                }),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
