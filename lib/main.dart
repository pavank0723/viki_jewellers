import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:viki_jewellers/app_colors.dart';

import 'web_view_stack.dart';  // Add this import

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.dark,
    statusBarColor: AppColors.greyLightest,
    systemNavigationBarColor: AppColors.greyLightest,
    systemNavigationBarIconBrightness: Brightness.dark
  ));
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: AppColors.primarySwatchColor,
          scaffoldBackgroundColor: AppColors.greyLightest
      ),
      home: WebViewApp(),
    ),
  );
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WebViewStack(),   // Replace the WebView widget with WebViewStack
    );
  }
}