import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_forecast/application/features/forecast/forecast_cubit.dart';
import 'package:weather_forecast/domain/models/forecast.dart';

class MoreDetailsVerticalView extends StatelessWidget {
  const MoreDetailsVerticalView({
    super.key,
    required this.forecast,
    required this.forecastCubit,
    required this.isFahrenheit,
  });

  final Forecast forecast;
  final ForecastCubit forecastCubit;
  final bool isFahrenheit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
            forecast.current.weatherDescriptions
                .map((description) => description)
                .join('\n'),
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontSize: 26, color: Colors.white),
            textAlign: TextAlign.center),
        const SizedBox(height: 8),
        Row(children: [
          Expanded(
            child: Card(
              margin: const EdgeInsets.all(8),
              shape: CardTheme.of(context).shape,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Humidity',
                        style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 8),
                    Text('${forecast.current.humidity}%',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Card(
              margin: const EdgeInsets.all(8),
              shape: CardTheme.of(context).shape,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Pressure',
                        style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 8),
                    Text('${forecast.current.pressure} hPa',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          )
        ]),
        Row(children: [
          Expanded(
            child: Card(
              margin: const EdgeInsets.all(8),
              shape: CardTheme.of(context).shape,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Feels like',
                        style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 8),
                    Text(
                      '${forecastCubit.convertTemperatureUnit(isFahrenheit, forecast.current.feelslike)} ${isFahrenheit ? 'F°' : 'C°'}',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
        Row(
          children: [
            Expanded(
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                shape: CardTheme.of(context).shape,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Wind',
                          style: Theme.of(context).textTheme.titleLarge),
                      const Icon(CupertinoIcons.wind),
                      Text(forecast.current.windDir,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(fontWeight: FontWeight.normal)),
                      const SizedBox(height: 8),
                      Text('${forecast.current.windSpeed} km/h',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(fontWeight: FontWeight.bold)),
                      //SizedBox(height: 8),
                      // Text('Direction: ${getCardinalDirection(windDirection)}', style:Theme.of(context).textTheme.headline6),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              shape: CardTheme.of(context).shape,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Cloudiness',
                        style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 8),
                    Text('${forecast.current.cloudcover}%',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ))
          ],
        ),
      ],
    );
  }
}
