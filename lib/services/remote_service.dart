import 'package:form/model/district.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  static Future<List<DistrictModel>?> fetchDistrict() async {
    try {
      var response = await http
          .get(Uri.parse("https://data.askbhunte.com/api/v1/districts"));
      if (response.statusCode == 200) {
        var data = response.body;
        return districtModelFromJson(data);
      } else {
        return null;
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }
}
