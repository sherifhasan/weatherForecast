import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_forecast/application/features/forecast/forecast_cubit.dart';

import 'injection.dart';

Future<void> main() async {
  await setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<ForecastCubit>(),
      child: MaterialApp(
        title: 'Weather Forecast',
        theme: ThemeData.light(
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const Placeholder(),
      ),
    );
  }
}
