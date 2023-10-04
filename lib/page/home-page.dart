import 'package:flutter/material.dart';
import 'package:weather_app/page/search-page.dart';
import 'package:weather_app/widget/weather-info-data.dart';

import '../widget/no-weather-data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Text(
          'Weather',
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return SearchPage();
                  },
                ),
              );
            },
            icon: Icon(
              Icons.search_sharp,
            ),
          ),
        ],
      ),
      body: NoWeatherData(),
    );
  }
}
