import 'package:open_api_playground/open_api_playground.dart' as open_api_playground;

void main(List<String> arguments) async {
  final forecastForAmsterdam = await open_api_playground.getTodayWeatherForecast('Amsterdam');

  print('Weather forecast for Amsterdam for today: $forecastForAmsterdam');
}
