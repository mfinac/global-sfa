import 'package:flutter/material.dart';

class SalesManagementPage extends StatelessWidget {
  const SalesManagementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sales Management'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 1.5,
            color: Colors.grey.shade700,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    height: 50,
                    margin: const EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Type your keyword here...',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(5),
              children: List.generate(
                50,
                    (index) => ListTile(
                  title: Text('Item $index'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

