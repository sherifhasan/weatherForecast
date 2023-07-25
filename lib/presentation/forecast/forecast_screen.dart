import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:weather_forecast/application/features/forecast/forecast_cubit.dart';
import 'package:weather_forecast/presentation/forecast/views/forecast_data_view.dart';
import 'package:weather_forecast/presentation/forecast/views/forecast_error_view.dart';
import 'package:weather_forecast/presentation/forecast/views/forecast_loading_view.dart';

class ForecastScreen extends HookWidget {
  const ForecastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final forecastCubit = context.read<ForecastCubit>();
    final cityController = useTextEditingController();
    final isFahrenheit = useState(false);

    useEffect(() {
      Future.microtask(() async {
        final locationResponse = await forecastCubit.getCityFromLocation();
        locationResponse.when(
          success: (city) {
            cityController.text = city;
            forecastCubit.getWeatherForecast(city);
          },
          error: (errorMessage) {
            Fluttertoast.showToast(
              msg: errorMessage,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              textColor: const Color(0xFF464A54),
              fontSize: 14,
              webPosition: 'center',
              webBgColor: '#F9DEDC',
            );
          },
        );
      });
      return null;
    });
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text('C°'),
            CupertinoSwitch(
                activeColor: Colors.lightBlue.shade400,
                value: isFahrenheit.value,
                onChanged: (value) => isFahrenheit.value = value),
            const Text('F°'),
          ],
        ),
      ),
      body: BlocBuilder<ForecastCubit, ForecastState>(
        builder: (context, state) {
          return SafeArea(
            bottom: true,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextField(
                    controller: cityController,
                    decoration: InputDecoration(
                      labelText: 'Search city...',
                      isDense: true,
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.search,
                          size: 32,
                        ),
                        onPressed: () => forecastCubit
                            .getWeatherForecast(cityController.text),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Colors.black54,
                            width: 2.0,
                            style: BorderStyle.solid),
                      ),
                    ),
                  ),
                  state.when(
                    initial: () => const SizedBox(),
                    loading: () => const ForecastLoadingView(),
                    data: (forecast) => RefreshIndicator(
                      onRefresh: () async {
                        await Future.delayed(const Duration(seconds: 2));
                        forecastCubit
                            .getWeatherForecast(forecast.location.name);
                      },
                      child: ForecastDataView(
                        forecast: forecast,
                        forecastCubit: forecastCubit,
                        isFahrenheit: isFahrenheit.value,
                      ),
                    ),
                    error: (errorMessage) => ForecastErrorView(
                      error: errorMessage,
                      callback: () =>
                          forecastCubit.getWeatherForecast(cityController.text),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
