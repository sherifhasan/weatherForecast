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
      padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height / 3),
      child: Column(
        children: [
          Text(error,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.red)),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: callback,
            child: const Text('Retry',
                style: TextStyle(
                    fontSize: 18, decoration: TextDecoration.underline)),
          ),
        ],
      ),
    );
  }
}
