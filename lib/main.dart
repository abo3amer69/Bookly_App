import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly_app/constant.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context)=> BooklyApp()));
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(scaffoldBackgroundColor: KprimaryColor),
      home: const SplashViews(),
    );
  }
}
