import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:weather_forecast/application/features/forecast/forecast_cubit.dart';
import 'package:weather_forecast/domain/models/forecast.dart';
import 'package:weather_forecast/presentation/forecast/views/forecast_details_expanded_view.dart';

import 'more_details_view.dart';

class ForecastDataView extends HookWidget {
  const ForecastDataView(
      {required this.forecast,
      required this.forecastCubit,
      required this.isFahrenheit,
      super.key});

  final Forecast forecast;
  final ForecastCubit forecastCubit;
  final bool isFahrenheit;

  @override
  Widget build(BuildContext context) {
    final isExpanded = useState(false);
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(16),
            color: Colors.lightBlue.shade400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 8),
                Text(forecast.location.name.split('(').first,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(fontSize: 32, color: Colors.white)),
                const SizedBox(height: 12),
                Text(
                  DateFormat(isExpanded.value
                          ? DateFormat.WEEKDAY
                          : DateFormat.ABBR_WEEKDAY)
                      .format(DateTime.now()),
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 18),
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(forecast.current.weatherIcons.first)),
                const SizedBox(height: 18),
                Text(
                    '${forecastCubit.convertTemperatureUnit(isFahrenheit, forecast.current.temperature)} ${isFahrenheit ? 'F°' : 'C°'}',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(fontSize: 32, color: Colors.white)),
                const SizedBox(height: 5),
                TextButton(
                  onPressed: () => isExpanded.value = !isExpanded.value,
                  child: Text('show more details',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 18,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white),
                      textAlign: TextAlign.center),
                ),
                ForecastDetailsExpandedView(
                  expand: isExpanded.value,
                  child: MoreDetailsView(
                      forecast: forecast,
                      forecastCubit: forecastCubit,
                      isFahrenheit: isFahrenheit),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
