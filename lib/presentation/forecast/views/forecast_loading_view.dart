import 'package:flutter/material.dart';

class ForecastLoadingView extends StatelessWidget {
  const ForecastLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
