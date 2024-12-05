import 'package:flutter/material.dart';
import 'food.dart';

class FoodCatalog extends StatefulWidget {
  final List<Food> foods;

  FoodCatalog({required this.foods});

  @override
  _FoodCatalogState createState() => _FoodCatalogState();
}

class _FoodCatalogState extends State<FoodCatalog> {
  int _currentIndex = 0;

  void _nextFood() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % widget.foods.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              widget.foods[_currentIndex].name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Text(
                              widget.foods[_currentIndex].description,
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.network(
                        widget.foods[_currentIndex].url,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: SizedBox(
                  width: 120,
                  child: ElevatedButton(
                    onPressed: _nextFood,
                    child: Text('Next Food'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
