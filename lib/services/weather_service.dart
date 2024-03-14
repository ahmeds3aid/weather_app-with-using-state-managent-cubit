import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class weatherservices {
  final Dio dio;
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apikey = '2916425a2c8644489c7213455232312';

  weatherservices({required this.dio});

  Future<Weathermodel> getcurrentweather({required String cityname}) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apikey&q=$cityname&days=1');
      Weathermodel weathermodel = Weathermodel.fromJson(response.data);
      return weathermodel;
    } on DioException catch (e) {
      final String errormessage = e.response?.data['error']['message'] ??
          'oops there was an errer try later';
      throw Exception(errormessage);
    } catch (e) {
      throw Exception('try later');
    }
  }
}
