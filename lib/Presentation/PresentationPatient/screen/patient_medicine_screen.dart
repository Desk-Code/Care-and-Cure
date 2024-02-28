import 'package:care_and_cure/Common/Widgets/no_data.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Presentation/PresentationPatient/screen/medicine_profile.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:care_and_cure/Util/medicine_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PatientMedicineScreen extends StatefulWidget {
  const PatientMedicineScreen({super.key});

  @override
  State<PatientMedicineScreen> createState() => _PatientMedicineScreenState();
}

class _PatientMedicineScreenState extends State<PatientMedicineScreen> {
  final TextEditingController _txtSearch = TextEditingController();
  @override
  void dispose() {
    _txtSearch.clear();
    CommonValues.search = "";
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> searchData = searchDataList();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: context.screenWidth * 0.9,
            margin: EdgeInsets.symmetric(
                horizontal: context.screenWidth * 0.05, vertical: 7),
            child: TextField(
              controller: _txtSearch,
              decoration: InputDecoration(
                hintText: "Search",
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
                  : searchData.length,
              itemBuilder: (context, index) {
                if (CommonValues.search == "") {
                  return GestureDetector(
                    onTap: () {
                      Get.to(() => MedicineProfile(
                            medicineName: medicineData[index]['name'],
                            medicineDescription: medicineData[index]['dieases'],
                          ));
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 13),
                          child: Text(
                            medicineData[index]['name'],
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
                } else if (CommonValues.search != "" && searchData.isNotEmpty) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(() => MedicineProfile(
                            medicineName: searchData[index]['name'],
                            medicineDescription: searchData[index]['dieases'],
                          ));
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 13),
                          child: Text(
                            searchData[index]['name'],
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
    );
  }

  static List<Map<String, dynamic>> searchDataList() {
    List<Map<String, dynamic>> searchData = [];
    for (int i = 0; i < medicineData.length; i++) {
      if (medicineData[i]['name']
          .toString()
          .toLowerCase()
          .contains(CommonValues.search.toLowerCase())) {
        searchData.add(medicineData[i]);
      }
    }
    return searchData;
  }
}
