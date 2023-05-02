import 'package:dio/dio.dart';

class HomeRepository {
  static Future<String> fetchRanderAPI() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get('http://www.boredapi.com/api/activity');
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data['activity'];
      } else {
        throw Exception();
      }
    } catch (_) {
      throw Exception();
    }
  }
}
