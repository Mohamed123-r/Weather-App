import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Searching'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Enter City Name ',
              labelText: 'Search',
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_sharp,
                ),
              ),
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
