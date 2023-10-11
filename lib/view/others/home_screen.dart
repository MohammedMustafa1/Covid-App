import 'package:flutter/material.dart';
  import 'package:get/get.dart';
// import 'package:getx_and_mvvm/Screen_one.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final myheight = MediaQuery.of(context).size.height * 1;
    final mywidth = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(title: const Text('GetX and Mvvm'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(mywidth*.025),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                child: ListTile(
                  title: const Text('GetX dialog Alert'),
                  subtitle: const Text('GEtX dialog alert with GetX'),
                  onTap: (){
                    Get.defaultDialog(
                      title: 'Delete chat',
                      titlePadding: const EdgeInsets.only(top: 20),
                      middleText: 'Are you sure you want to delete this cat ?',
                      contentPadding: const EdgeInsets.all(20),
                      textConfirm: 'Yes',
                      textCancel: 'No',
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text('GetX Bottom Sheet'),
                  subtitle: const Text('GetX Dialog alert with getX'),
                  onTap: (){
                    Get.bottomSheet(
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: const Icon(Icons.light_mode),
                              title: const Text('Light Theme'),
                              onTap: (){
                                Get.changeTheme(ThemeData.light());
                              },
                            ),
                            ListTile(
                              leading: const Icon(Icons.dark_mode),
                              title: const Text('Dark Theme'),
                              onTap: (){
                                Get.changeTheme(ThemeData.dark());
                              },
                            ),
                          ],
                        ),
                      )
                    );
                  },
                ),
              ),
              TextButton(
                onPressed: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenOne()));
                  //Get.to(const ScreenOne(name: 'Mustafa',));
                  Get.toNamed('/screenOne',arguments: ['Mustafa','Arif']);
                },
                  child: const Text('Go to Screen One'),
              ),
              Container(
                height: MediaQuery.of(context).size.height*.8,
                color: Colors.blueGrey,
                child: const Center(
                  child: Text('Mustafa'),
                ),
              ),
              Container(
                height: Get.height*.3,
                color: Colors.blue,
                child: const Center(
                  child: Text('Mustafa'),
                ),
              ),
              Container(
                height: myheight*.2,
                color: Colors.grey,
                child: const Center(
                  child: Text('Mustafa'),
                ),
              ),
              SizedBox(height: myheight*.1,),
              ListTile(
                title: Text('message'.tr),
                subtitle: Text('name'.tr),
              ),
              SizedBox(height: myheight*.1,),
              Row(
                children: [
                  OutlinedButton(onPressed: (){
                    Get.updateLocale(const Locale('en','US'));
                  }, child: const Text('English')),
                  SizedBox(width: mywidth*.05,),
                  OutlinedButton(onPressed: (){
                    Get.updateLocale(const Locale('ur','PK'));
                  }, child: const Text('Urdu')),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.closed_caption),
        onPressed: (){
          Get.snackbar(
              'Mustafa',
              'Nice',
            backgroundColor: Colors.blue,
            snackPosition: SnackPosition.TOP,
            icon: const Icon(Icons.add),
            mainButton: TextButton(onPressed: (){}, child: const Text('Click')),
            onTap: (snap){
            },
          );
        },
      ),
    );
  }
}
