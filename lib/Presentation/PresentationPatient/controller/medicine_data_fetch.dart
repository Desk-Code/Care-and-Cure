import 'package:care_and_cure/Util/common_values.dart';
import 'package:care_and_cure/Util/medicine_data.dart';
import 'package:get/get.dart';

class MedicineData {
  static List<Map<String, dynamic>> searchDataList() {
    List<Map<String, dynamic>> searchData = [];
    for (int i = 0; i < medicineData.length; i++) {
      if ('${medicineData[i]['name']}'
          .tr
          .toString()
          .toLowerCase()
          .contains(CommonValues.search.toLowerCase())) {
        searchData.add(medicineData[i]);
      }
    }
    return searchData;
  }
}
