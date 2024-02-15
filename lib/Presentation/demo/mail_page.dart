import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class MailPageDemo extends StatefulWidget {
  const MailPageDemo({super.key});

  @override
  State<MailPageDemo> createState() => _MailPageDemoState();
}

class _MailPageDemoState extends State<MailPageDemo> {
  final outlookSmtp =
      hotmail(dotenv.env["OUTLOOK_EMAIL"]!, dotenv.env["OUTLOOK_PASSWORD"]!);
  sendMailFromOutlook() async {
    final message = Message()
      ..from = Address(dotenv.env["OUTLOOK_EMAIL"]!, 'Care_and_Cure')
      ..recipients.add('kisito2723@tupanda.com')
      ..subject = 'Test Dart Mailer library :: 😀 :: ${DateTime.now()}'
      ..text = 'This is the plain text.\nThis is line 2 of the text part.';
    try {
      final sendReport = await send(message, outlookSmtp);
      log("Message sent: $sendReport");
    } on MailerException catch (e) {
      log("Message not sent.");
      for (var p in e.problems) {
        log("Problem: ${p.code}: ${p.msg}");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Send mail for email"),
      ),
      body: ElevatedButton(
          onPressed: () {
            sendMailFromOutlook();
          },
          child: const Text("Send mail from outlook")),
    );
  }
}
