import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MultiLanguageScreen extends StatelessWidget {
  const MultiLanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('app_title'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildTranslationTile('count'),
            _buildTranslationTile('go_to_second_screen'),
            _buildTranslationTile('show_snackbar'),
            _buildTranslationTile('show_dialog'),
            _buildTranslationTile('increment_count'),
            _buildTranslationTile('storage_example'),
            _buildTranslationTile('second_screen_title'),
            _buildTranslationTile('data_from_first_screen'),
            _buildTranslationTile('go_back'),
            _buildTranslationTile('change_name'),
            ElevatedButton(
              onPressed: () {
                if (Get.locale?.languageCode == 'en') {
                  Get.updateLocale(const Locale('ur', 'PK'));
                } else {
                  Get.updateLocale(const Locale('en', 'US'));
                }
              },
              child: Text('change_language'.tr),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTranslationTile(String key) {
    return ListTile(
      title: Text(key.tr),
      subtitle: Text(key.tr, style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
