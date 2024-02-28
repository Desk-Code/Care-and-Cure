import 'package:care_and_cure/Presentation/PresentationHospital/BillData/Screen/payment_completed_screen.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/BillData/Screen/payment_pending_screen.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BillData extends StatefulWidget {
  const BillData({super.key});

  @override
  State<BillData> createState() => _BillDataState();
}

class _BillDataState extends State<BillData> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: ConstrainColor.bgAppBarColor,
          title: Text(
            'appName'.tr,
            style: GoogleFonts.lato(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          bottom: TabBar(
            dividerColor: Colors.black,
            overlayColor: MaterialStatePropertyAll(
              Colors.cyan[80],
            ),
            tabs: const [
              Tab(
                icon: Icon(Icons.money_off_csred_outlined),
                text: "Payment Pending",
              ),
              Tab(
                icon: Icon(Icons.monetization_on),
                text: "Payment Completed",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            PaymentPendingScreen(),
            PaymentCompletedScreen(),
          ],
        ),
      ),
    );
  }
}
