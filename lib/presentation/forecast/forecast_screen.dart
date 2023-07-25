import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:weather_forecast/application/features/forecast/forecast_cubit.dart';
import 'package:weather_forecast/presentation/forecast/views/horizontal/forecast_data_horizontal_view.dart';
import 'package:weather_forecast/presentation/forecast/views/forecast_error_view.dart';
import 'package:weather_forecast/presentation/forecast/views/forecast_loading_view.dart';

import 'views/views.dart';

class ForecastScreen extends HookWidget {
  const ForecastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final forecastCubit = context.read<ForecastCubit>();
    final cityController = useTextEditingController();
    final isFahrenheit = useState(false);

    final future = useMemoized(forecastCubit.getCityFromLocation);
    final snapshot = useFuture(future, initialData: null);

    useEffect(() {
      final locationResponse = snapshot.data;
      if (locationResponse == null) {
        return;
      }
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
      return null;
    }, [snapshot.data]);
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10))),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: TextField(
                controller: cityController,
                decoration: InputDecoration(
                  hintText: 'Search city...',
                  labelText: 'Search',
                  isDense: true,
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.search,
                      size: 32,
                    ),
                    onPressed: () =>
                        forecastCubit.getWeatherForecast(cityController.text),
                  ),
                  contentPadding: const EdgeInsets.all(5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                        color: Colors.black54,
                        width: 2.0,
                        style: BorderStyle.solid),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
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
            child: RefreshIndicator(
              displacement: 20,
              onRefresh: () async {
                if (cityController.value.text.isNotEmpty) {
                  await Future.delayed(const Duration(seconds: 2));
                  forecastCubit.getWeatherForecast(cityController.value.text);
                }
              },
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    state.when(
                      initial: () => const SizedBox(),
                      loading: () => const ForecastLoadingView(),
                      data: (forecast) => MediaQuery.orientationOf(context) ==
                              Orientation.portrait
                          ? ForecastDataVerticalView(
                              forecast: forecast,
                              forecastCubit: forecastCubit,
                              isFahrenheit: isFahrenheit.value,
                            )
                          : ForecastDataHorizontalView(
                              forecast: forecast,
                              forecastCubit: forecastCubit,
                              isFahrenheit: isFahrenheit.value,
                            ),
                      error: (errorMessage) => ForecastErrorView(
                        error: errorMessage,
                        callback: () => forecastCubit
                            .getWeatherForecast(cityController.text),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
