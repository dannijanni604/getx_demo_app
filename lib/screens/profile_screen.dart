import 'package:demo/controllers/home_screen_controller.dart';
import 'package:demo/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    print("Rebuilded Context");
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Flutter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('Count: ${controller.count}')),
            ElevatedButton(
              onPressed: () {
                controller.increment();
              },
              child: const Text('Increment Count'),
            ),
            ElevatedButton(
              onPressed: () async {
                await GetStorage().write('key', 'value');
                String storedValue = GetStorage().read('key') ?? 'Not Found';
                print('Stored Value: $storedValue');
              },
              child: const Text('Storage Example'),
            ),
            Obx(() => Text('Name: ${controller.name}')),
            ElevatedButton(
              onPressed: () {
                controller.nameChange();
              },
              child: const Text('Change Name'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(AppRoutes.multiLanguage);
              },
              child: const Text('Multi Language Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
