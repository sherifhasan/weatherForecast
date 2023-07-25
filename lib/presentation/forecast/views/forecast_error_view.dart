import 'package:flutter/material.dart';

class ForecastErrorView extends StatelessWidget {
  const ForecastErrorView(
      {required this.error, required this.callback, super.key});

  final String error;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: FractionalOffset.center,
      child: Column(
        children: [
          Text(error,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.red)),
          ElevatedButton(
            onPressed: callback,
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
