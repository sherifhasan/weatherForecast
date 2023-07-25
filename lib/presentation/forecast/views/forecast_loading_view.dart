import 'package:flutter/material.dart';

class ForecastLoadingView extends StatelessWidget {
  const ForecastLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Padding(
        padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height/3),
        child: const CircularProgressIndicator(),
      ),
    );
  }
}
