// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visualcrossing_weather_api.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$VisualcrossingWeatherApi extends VisualcrossingWeatherApi {
  _$VisualcrossingWeatherApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = VisualcrossingWeatherApi;

  @override
  Future<Response<dynamic>> _visualCrossingWebServicesRestServicesTimelineLocationGet({
    required String? location,
    String? contentType,
    String? unitGroup,
    String? include,
    String? lang,
    required String? key,
  }) {
    final Uri $url = Uri.parse('/VisualCrossingWebServices/rest/services/timeline/${location}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'contentType': contentType,
      'unitGroup': unitGroup,
      'include': include,
      'lang': lang,
      'key': key,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _visualCrossingWebServicesRestServicesTimelineLocationStartdateGet({
    required String? location,
    required String? startdate,
    String? contentType,
    String? unitGroup,
    String? include,
    String? lang,
    required String? key,
  }) {
    final Uri $url =
        Uri.parse('/VisualCrossingWebServices/rest/services/timeline/${location}/${startdate}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'contentType': contentType,
      'unitGroup': unitGroup,
      'include': include,
      'lang': lang,
      'key': key,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>>
      _visualCrossingWebServicesRestServicesTimelineLocationStartdateEnddateGet({
    required String? location,
    required String? startdate,
    required String? enddate,
    String? contentType,
    String? unitGroup,
    String? include,
    String? lang,
    required String? key,
  }) {
    final Uri $url = Uri.parse(
        '/VisualCrossingWebServices/rest/services/timeline/${location}/${startdate}/${enddate}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'contentType': contentType,
      'unitGroup': unitGroup,
      'include': include,
      'lang': lang,
      'key': key,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _visualCrossingWebServicesRestServicesWeatherdataForecastGet({
    bool? sendAsDatasource,
    bool? allowAsynch,
    bool? shortColumnNames,
    String? locations,
    String? aggregateHours,
    String? contentType,
    String? unitGroup,
    String? key,
  }) {
    final Uri $url = Uri.parse('/VisualCrossingWebServices/rest/services/weatherdata/forecast');
    final Map<String, dynamic> $params = <String, dynamic>{
      'sendAsDatasource': sendAsDatasource,
      'allowAsynch': allowAsynch,
      'shortColumnNames': shortColumnNames,
      'locations': locations,
      'aggregateHours': aggregateHours,
      'contentType': contentType,
      'unitGroup': unitGroup,
      'key': key,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _visualCrossingWebServicesRestServicesWeatherdataHistoryGet({
    String? maxDistance,
    bool? shortColumnNames,
    String? endDateTime,
    String? aggregateHours,
    bool? collectStationContributions,
    String? startDateTime,
    String? maxStations,
    bool? allowAsynch,
    String? locations,
    bool? includeNormals,
    String? contentType,
    String? unitGroup,
    String? key,
  }) {
    final Uri $url = Uri.parse('/VisualCrossingWebServices/rest/services/weatherdata/history');
    final Map<String, dynamic> $params = <String, dynamic>{
      'maxDistance': maxDistance,
      'shortColumnNames': shortColumnNames,
      'endDateTime': endDateTime,
      'aggregateHours': aggregateHours,
      'collectStationContributions': collectStationContributions,
      'startDateTime': startDateTime,
      'maxStations': maxStations,
      'allowAsynch': allowAsynch,
      'locations': locations,
      'includeNormals': includeNormals,
      'contentType': contentType,
      'unitGroup': unitGroup,
      'key': key,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
