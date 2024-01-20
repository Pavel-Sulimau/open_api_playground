import 'dart:io';

import 'package:open_api_playground/generated/api_client/client_index.dart';

Future<String> getTodayWeatherForecast(String city) async {
  final apiClient = VisualcrossingWeatherApi.create(
    baseUrl: Uri.parse('https://weather.visualcrossing.com'),
  );

  final today = DateTime.now();
  final todayDateString = DateTime(today.year, today.month, today.day, 0, 0, 0).toIso8601String();
  final todaysWeatherForecastResponse =
      await apiClient.visualCrossingWebServicesRestServicesTimelineLocationStartdateGet(
    location: city,
    key: 'W6PXDPAF3ZJW4UT3YPHKWEVZV',
    startdate: todayDateString,
  );

  if (todaysWeatherForecastResponse.statusCode == HttpStatus.ok) {
    return todaysWeatherForecastResponse.bodyString; // as Map<String, dynamic>);
  }

  throw Exception(
    'Failed to load weather forecast, status code: ${todaysWeatherForecastResponse.statusCode}, body: ${todaysWeatherForecastResponse.bodyString}.',
  );
}
