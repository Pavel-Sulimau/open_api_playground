// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;

part 'visualcrossing_weather_api.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class VisualcrossingWeatherApi extends ChopperService {
  static VisualcrossingWeatherApi create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$VisualcrossingWeatherApi(client);
    }

    final newClient = ChopperClient(
        services: [_$VisualcrossingWeatherApi()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        errorConverter: errorConverter,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$VisualcrossingWeatherApi(newClient);
  }

  ///Historical and Forecast Weather API
  ///@param location Locaton of interest as an address, partial address or decimal latitude,longtude value
  ///@param contentType data format of the output either json or CSV
  ///@param unitGroup
  ///@param include data to include in the output (required for CSV format - days,hours,alerts,current,events )
  ///@param lang Language to use for weather descriptions
  ///@param key
  Future<chopper.Response>
      visualCrossingWebServicesRestServicesTimelineLocationGet({
    required String? location,
    String? contentType,
    String? unitGroup,
    String? include,
    String? lang,
    required String? key,
  }) {
    return _visualCrossingWebServicesRestServicesTimelineLocationGet(
        location: location,
        contentType: contentType,
        unitGroup: unitGroup,
        include: include,
        lang: lang,
        key: key);
  }

  ///Historical and Forecast Weather API
  ///@param location Locaton of interest as an address, partial address or decimal latitude,longtude value
  ///@param contentType data format of the output either json or CSV
  ///@param unitGroup
  ///@param include data to include in the output (required for CSV format - days,hours,alerts,current,events )
  ///@param lang Language to use for weather descriptions
  ///@param key
  @Get(path: '/VisualCrossingWebServices/rest/services/timeline/{location}')
  Future<chopper.Response>
      _visualCrossingWebServicesRestServicesTimelineLocationGet({
    @Path('location') required String? location,
    @Query('contentType') String? contentType,
    @Query('unitGroup') String? unitGroup,
    @Query('include') String? include,
    @Query('lang') String? lang,
    @Query('key') required String? key,
  });

  ///Historical and Forecast Weather API
  ///@param location
  ///@param startdate
  ///@param contentType data format of the output either json or CSV
  ///@param unitGroup
  ///@param include data to include in the output (required for CSV format - days,hours,alerts,current,events )
  ///@param lang Language to use for weather descriptions
  ///@param key
  Future<chopper.Response>
      visualCrossingWebServicesRestServicesTimelineLocationStartdateGet({
    required String? location,
    required String? startdate,
    String? contentType,
    String? unitGroup,
    String? include,
    String? lang,
    required String? key,
  }) {
    return _visualCrossingWebServicesRestServicesTimelineLocationStartdateGet(
        location: location,
        startdate: startdate,
        contentType: contentType,
        unitGroup: unitGroup,
        include: include,
        lang: lang,
        key: key);
  }

  ///Historical and Forecast Weather API
  ///@param location
  ///@param startdate
  ///@param contentType data format of the output either json or CSV
  ///@param unitGroup
  ///@param include data to include in the output (required for CSV format - days,hours,alerts,current,events )
  ///@param lang Language to use for weather descriptions
  ///@param key
  @Get(
      path:
          '/VisualCrossingWebServices/rest/services/timeline/{location}/{startdate}')
  Future<chopper.Response>
      _visualCrossingWebServicesRestServicesTimelineLocationStartdateGet({
    @Path('location') required String? location,
    @Path('startdate') required String? startdate,
    @Query('contentType') String? contentType,
    @Query('unitGroup') String? unitGroup,
    @Query('include') String? include,
    @Query('lang') String? lang,
    @Query('key') required String? key,
  });

  ///Historical and Forecast Weather API
  ///@param location
  ///@param startdate
  ///@param enddate
  ///@param contentType data format of the output either json or CSV
  ///@param unitGroup
  ///@param include data to include in the output (required for CSV format - days,hours,alerts,current,events )
  ///@param lang Language to use for weather descriptions
  ///@param key
  Future<chopper.Response>
      visualCrossingWebServicesRestServicesTimelineLocationStartdateEnddateGet({
    required String? location,
    required String? startdate,
    required String? enddate,
    String? contentType,
    String? unitGroup,
    String? include,
    String? lang,
    required String? key,
  }) {
    return _visualCrossingWebServicesRestServicesTimelineLocationStartdateEnddateGet(
        location: location,
        startdate: startdate,
        enddate: enddate,
        contentType: contentType,
        unitGroup: unitGroup,
        include: include,
        lang: lang,
        key: key);
  }

  ///Historical and Forecast Weather API
  ///@param location
  ///@param startdate
  ///@param enddate
  ///@param contentType data format of the output either json or CSV
  ///@param unitGroup
  ///@param include data to include in the output (required for CSV format - days,hours,alerts,current,events )
  ///@param lang Language to use for weather descriptions
  ///@param key
  @Get(
      path:
          '/VisualCrossingWebServices/rest/services/timeline/{location}/{startdate}/{enddate}')
  Future<chopper.Response>
      _visualCrossingWebServicesRestServicesTimelineLocationStartdateEnddateGet({
    @Path('location') required String? location,
    @Path('startdate') required String? startdate,
    @Path('enddate') required String? enddate,
    @Query('contentType') String? contentType,
    @Query('unitGroup') String? unitGroup,
    @Query('include') String? include,
    @Query('lang') String? lang,
    @Query('key') required String? key,
  });

  ///Weather Forecast API
  ///@param sendAsDatasource
  ///@param allowAsynch
  ///@param shortColumnNames
  ///@param locations
  ///@param aggregateHours
  ///@param contentType
  ///@param unitGroup
  ///@param key
  Future<chopper.Response>
      visualCrossingWebServicesRestServicesWeatherdataForecastGet({
    bool? sendAsDatasource,
    bool? allowAsynch,
    bool? shortColumnNames,
    String? locations,
    String? aggregateHours,
    String? contentType,
    String? unitGroup,
    String? key,
  }) {
    return _visualCrossingWebServicesRestServicesWeatherdataForecastGet(
        sendAsDatasource: sendAsDatasource,
        allowAsynch: allowAsynch,
        shortColumnNames: shortColumnNames,
        locations: locations,
        aggregateHours: aggregateHours,
        contentType: contentType,
        unitGroup: unitGroup,
        key: key);
  }

  ///Weather Forecast API
  ///@param sendAsDatasource
  ///@param allowAsynch
  ///@param shortColumnNames
  ///@param locations
  ///@param aggregateHours
  ///@param contentType
  ///@param unitGroup
  ///@param key
  @Get(path: '/VisualCrossingWebServices/rest/services/weatherdata/forecast')
  Future<chopper.Response>
      _visualCrossingWebServicesRestServicesWeatherdataForecastGet({
    @Query('sendAsDatasource') bool? sendAsDatasource,
    @Query('allowAsynch') bool? allowAsynch,
    @Query('shortColumnNames') bool? shortColumnNames,
    @Query('locations') String? locations,
    @Query('aggregateHours') String? aggregateHours,
    @Query('contentType') String? contentType,
    @Query('unitGroup') String? unitGroup,
    @Query('key') String? key,
  });

  ///Retrieves hourly or daily historical weather records.
  ///@param maxDistance
  ///@param shortColumnNames
  ///@param endDateTime
  ///@param aggregateHours
  ///@param collectStationContributions
  ///@param startDateTime
  ///@param maxStations
  ///@param allowAsynch
  ///@param locations
  ///@param includeNormals
  ///@param contentType
  ///@param unitGroup
  ///@param key
  Future<chopper.Response>
      visualCrossingWebServicesRestServicesWeatherdataHistoryGet({
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
    return _visualCrossingWebServicesRestServicesWeatherdataHistoryGet(
        maxDistance: maxDistance,
        shortColumnNames: shortColumnNames,
        endDateTime: endDateTime,
        aggregateHours: aggregateHours,
        collectStationContributions: collectStationContributions,
        startDateTime: startDateTime,
        maxStations: maxStations,
        allowAsynch: allowAsynch,
        locations: locations,
        includeNormals: includeNormals,
        contentType: contentType,
        unitGroup: unitGroup,
        key: key);
  }

  ///Retrieves hourly or daily historical weather records.
  ///@param maxDistance
  ///@param shortColumnNames
  ///@param endDateTime
  ///@param aggregateHours
  ///@param collectStationContributions
  ///@param startDateTime
  ///@param maxStations
  ///@param allowAsynch
  ///@param locations
  ///@param includeNormals
  ///@param contentType
  ///@param unitGroup
  ///@param key
  @Get(path: '/VisualCrossingWebServices/rest/services/weatherdata/history')
  Future<chopper.Response>
      _visualCrossingWebServicesRestServicesWeatherdataHistoryGet({
    @Query('maxDistance') String? maxDistance,
    @Query('shortColumnNames') bool? shortColumnNames,
    @Query('endDateTime') String? endDateTime,
    @Query('aggregateHours') String? aggregateHours,
    @Query('collectStationContributions') bool? collectStationContributions,
    @Query('startDateTime') String? startDateTime,
    @Query('maxStations') String? maxStations,
    @Query('allowAsynch') bool? allowAsynch,
    @Query('locations') String? locations,
    @Query('includeNormals') bool? includeNormals,
    @Query('contentType') String? contentType,
    @Query('unitGroup') String? unitGroup,
    @Query('key') String? key,
  });
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
          body: DateTime.parse((response.body as String).replaceAll('"', ''))
              as ResultType);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
