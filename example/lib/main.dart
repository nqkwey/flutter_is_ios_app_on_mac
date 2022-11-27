import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_is_ios_app_on_mac/flutter_is_ios_app_on_mac.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool? _isIosAppOnMac;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    try {
      _isIosAppOnMac = await FlutterIsIosAppOnMac.isIosAppOnMac();
    } on PlatformException {
      _isIosAppOnMac = null;
    }

    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    String statusText = "Loading";
    if(_isIosAppOnMac != null){
      statusText = _isIosAppOnMac.toString();
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Is iOS app on mac: $statusText\n'),
        ),
      ),
    );
  }
}
