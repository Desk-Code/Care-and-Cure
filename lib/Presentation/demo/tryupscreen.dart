import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class TryupScreen extends StatefulWidget {
  const TryupScreen({super.key});

  @override
  State<TryupScreen> createState() => _TryupScreenState();
}

class _TryupScreenState extends State<TryupScreen> {
  String message = "This is a test message!";
  List<String> recipents = ["+919313403837"];

//Handle Permission Code
  getPermission() async => await [
        Permission.sms,
      ].request();

  Future<bool> isPermissionGranded() async =>
      await Permission.sms.status.isGranted;
//code for check sim
//send sms code
  void sendSms() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: () async {
                  if (await isPermissionGranded()) {
                  } else {
                    getPermission();
                  }
                },
                child: const Text("Send Message")),
          ],
        ),
      ),
    );
  }
}
