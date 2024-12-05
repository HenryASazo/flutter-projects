import 'package:flutter/material.dart';

class PracticeScreen extends StatefulWidget {
  @override
  _PracticeScreenState createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  final TextEditingController _nameController = TextEditingController();
  List<String> _names = ['Ed Sheeran', 'Chris Martin', 'Beyonce']; // Default names

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Enter a name',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                final newName = _nameController.text.trim();
                if (newName.isNotEmpty) {
                  _names.add(newName);
                  _nameController.clear();
                }
              });
            },
            child: Text('Add Name'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _names.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_names[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        _names.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
