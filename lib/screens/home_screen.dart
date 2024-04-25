import 'package:demo/controllers/theme_controller.dart';
import 'package:demo/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    print("Build Function Called");
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Flutter App'),
        actions: [
          ElevatedButton(
            child: const Text('Change Theme'),
            onPressed: () => themeController.toggleTheme(),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.to(SecondScreen()),
              child: const Text('Go to Second Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  'Snackbar Title',
                  'This is a snackbar message',
                  snackPosition: SnackPosition.BOTTOM,
                );
              },
              child: const Text('Show Snackbar'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: 'Dialog Title',
                  content: const Text('This is a dialog content'),
                );
              },
              child: const Text('Show Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
