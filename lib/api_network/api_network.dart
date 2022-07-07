import 'dart:convert';

import 'package:gamer_power_api_bloc/model/api_data_model.dart';
import 'package:http/http.dart' as http;

class ApiNetwork {
  final String apiUrl = 'https://www.gamerpower.com/api/giveaways';

  Future<List<ApiData>> getApiData() async {
    http.Response response = await http.get(Uri.parse(apiUrl));

    try {
      if (response.statusCode == 200) {
        /*final api = apiDataFromJson(response.body);
        return api;*/
        List<dynamic> list = json.decode(response.body);
        List<ApiData> api = list.map((api) => ApiData.fromJson(api)).toList();
        print(response.body);
        // print(api.length);
        return api;
      } else {
        return <ApiData>[];
      }
    } catch (e) {
      throw Exception('Failed to Load data for ${e.toString()} 😞😞');
    }
    //return getApiData();
  }
}
