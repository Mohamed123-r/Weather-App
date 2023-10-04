import 'package:flutter/cupertino.dart';

class NoWeatherData extends StatelessWidget {
  const NoWeatherData({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'There no weather data 😔',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          Text(
            ' Start searching now 🔍',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
