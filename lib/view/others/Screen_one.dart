//import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_and_mvvm/view/others/Screen_two.dart';
import 'package:getx_and_mvvm/view_models/others/counter_controller.dart';
import 'package:getx_and_mvvm/view_models/others/login_controller.dart';


class ScreenOne extends StatefulWidget {
  final dynamic name;
  const ScreenOne({super.key, this.name});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {

  final CounterController controller = Get.put(CounterController());
  final LoginController eController = Get.put(LoginController());
  //int x = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //Timer.periodic(Duration(seconds: 1), (timer) {x++;setState(() {});});
  }

  @override
  Widget build(BuildContext context) {
    print('total rebuild');
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One ${Get.arguments[0]}'),
        //title: Text('Screen One ${widget.name}'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: eController.emailController.value,
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
            ),
            TextFormField(
              controller: eController.passwordController.value,
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
            ),
            const SizedBox(height: 50,),
            Obx(() => InkWell(
              onTap: (){
                eController.loginApi();
              },
              child: eController.loading.value ? const CircularProgressIndicator() :Container(
                alignment: Alignment.center,
                height: 45,
                width: 100,
                color: Colors.blueGrey,
                child: const Text('Login'),
              ),
            ),),
            const SizedBox(height: 50,),
            Center(
              child: TextButton(
                  onPressed: (){
                    //Navigator.pop(context);
                    Get.to(ScreenTwo());
                  },
                  child: const Text('GO to Screen Two'),
              ),
            ),
            Center(
              child: Obx((){
              return Text(controller.counter.toString(),style: const TextStyle(fontSize: 60),);
              }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //x++;setState(() {});},
          controller.incrementCounter();
        }
      ),
    );
  }
}
