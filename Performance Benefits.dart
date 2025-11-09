import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PerfController extends GetxController {
  var count = 0.obs;
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Hiệu suất")),
        body: Center(
          child: Column(
            children: [
              Text("Phần này KHÔNG đổi"),  // Không rebuild
              Obx(() => Text("Số: ${Get.put(PerfController()).count}", 
                  style: TextStyle(fontSize: 50, color: Colors.red))),
              ElevatedButton(
                onPressed: () => Get.find<PerfController>().count++,
                child: Text("Tăng số"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}