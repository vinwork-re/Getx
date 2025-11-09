import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;  // Số thông minh
  void tang() => count++;
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Reactive")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text("Số: ${Get.put(CounterController()).count}", 
                  style: TextStyle(fontSize: 40))),
              ElevatedButton(
                onPressed: () => Get.find<CounterController>().tang(),
                child: Text("Tăng"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}