# Open API Playground

A sample showing [OpenAPI description](https://learn.openapis.org/specification/structure.html),
[Swagger_dart_code_generator](https://pub.dev/packages/swagger_dart_code_generator),
[Prettier](https://prettier.io/) formatter, and [Spectral](https://stoplight.io/open-source/spectral) linter.

Weather API of [VisualCrossing](https://www.visualcrossing.com/) was used for the example's sake.
Free Key for the used Weather API can be obtained at https://www.visualcrossing.com/account after registration.

OpenAPI description (OAD) for the Weather API was found here: https://api.apis.guru/v2/specs/visualcrossing.com/weather/4.6/openapi.yaml

The weather OAD turns out to be of bad quality and lacking much data (which is good for the linter's example),
more info about the types can be found on [their website](https://www.visualcrossing.com/resources/documentation/weather-api/timeline-weather-api/).

After installing `Spectral` linter, the validation can be run by:
```bash
spectral lint openapi_definitions/visualcrossing_weather_api.yaml --ruleset openapi_ruleset.spectral.yaml
```
