import 'package:care_and_cure/Common/Widgets/no_data.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Presentation/PresentationPatient/controller/medicine_data_fetch.dart';
import 'package:care_and_cure/Presentation/PresentationPatient/screen/medicine_profile.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:care_and_cure/Util/medicine_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pull_to_refresh_new/pull_to_refresh.dart';

class PatientMedicineScreen extends StatefulWidget {
  const PatientMedicineScreen({super.key});

  @override
  State<PatientMedicineScreen> createState() => _PatientMedicineScreenState();
}

class _PatientMedicineScreenState extends State<PatientMedicineScreen> {
  //
  final TextEditingController _txtSearch = TextEditingController();

  RefreshController refreshController =
      RefreshController(initialRefresh: false);

  bool shimmer = false;

  void _onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    refreshController.refreshCompleted();
  }

  void _onLoading() async {
    setState(() {
      shimmer = true;
    });
    await Future.delayed(const Duration(seconds: 2)).then(
      (value) => setState(
        () {
          shimmer = false;
        },
      ),
    );
    refreshController.loadComplete();
  }

  @override
  void initState() {
    CommonValues.searchData = [];
    super.initState();
  }

  @override
  void dispose() {
    _txtSearch.clear();
    CommonValues.search = "";
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CommonValues.searchData = MedicineData.searchDataList();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SmartRefresher(
        controller: refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        enablePullDown: true,
        enablePullUp: true,
        header: WaterDropMaterialHeader(
          backgroundColor: ConstrainColor.bgAppBarColor,
          color: Colors.black38,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: context.screenWidth * 0.9,
              margin: EdgeInsets.symmetric(
                  horizontal: context.screenWidth * 0.05, vertical: 7),
              child: TextField(
                controller: _txtSearch,
                decoration: InputDecoration(
                  hintText: 'search'.tr,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: const Icon(Icons.search),
                ),
                onChanged: (value) {
                  CommonValues.search = value;
                  setState(() {});
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: (CommonValues.search == "")
                    ? medicineData.length
                    : CommonValues.searchData.length,
                itemBuilder: (context, index) {
                  if (CommonValues.search == "") {
                    return GestureDetector(
                      onTap: () {
                        HapticFeedback.heavyImpact();
                        Get.to(() => MedicineProfile(
                              medicineName: '${medicineData[index]['name']}'.tr,
                              medicineDescription:
                                  '${medicineData[index]['dieases']}'.tr,
                            ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 13),
                            child: Text(
                              '${medicineData[index]['name']}'.tr,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          const Divider(
                            indent: 11,
                            endIndent: 11,
                          ),
                        ],
                      ),
                    );
                  } else if (CommonValues.search != "" &&
                      CommonValues.searchData.isNotEmpty) {
                    return GestureDetector(
                      onTap: () {
                        HapticFeedback.heavyImpact();
                        Get.to(() => MedicineProfile(
                              medicineName:
                                  '${CommonValues.searchData[index]['name']}'
                                      .tr,
                              medicineDescription:
                                  '${CommonValues.searchData[index]['dieases']}'
                                      .tr,
                            ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 13),
                            child: Text(
                              '${CommonValues.searchData[index]['name']}'.tr,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          const Divider(),
                        ],
                      ),
                    );
                  }
                  return noData();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
