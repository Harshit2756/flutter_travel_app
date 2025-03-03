import 'package:device_preview_screenshot/device_preview_screenshot.dart';
import 'package:device_preview/device_preview.dart';
import 'device_preview_button.dart';

import 'package:travel_app/pages/navpages/main_page.dart';
import 'package:device_preview_screenshot/device_preview_screenshot.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(
    DevicePreview(
      backgroundColor: Colors.white,
      tools: const [
       CustomPlugin(
          apkDownloadUrl: "https://github.com/Harshit2756/flutter_travel_app/releases/download/v1.0.5/app-release.apk",
          sourceCodeUrl: "https://github.com/Harshit2756/flutter_travel_app/archive/refs/tags/v1.0.5.zip",
        ),
        DeviceSection(frameVisibility: true, orientation: false, virtualKeyboard: true, model: true),
        SettingsSection(backgroundTheme: false, toolsTheme: true),
        // SystemSection(locale: false, theme: false),
        DevicePreviewScreenshot(),
      ],
      devices: [
        Devices.android.samsungGalaxyA50,
        Devices.android.samsungGalaxyNote20,
        Devices.android.samsungGalaxyS20,
        Devices.android.samsungGalaxyNote20Ultra,
        Devices.android.onePlus8Pro,
        Devices.android.sonyXperia1II,
        Devices.ios.iPhoneSE,
        Devices.ios.iPhone12,
        Devices.ios.iPhone12Mini,
        Devices.ios.iPhone12ProMax,
        Devices.ios.iPhone13,
        Devices.ios.iPhone13ProMax,
        Devices.ios.iPhone13Mini,
        Devices.ios.iPhoneSE,
      ],
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const MainPage(),
    );
  }
}
