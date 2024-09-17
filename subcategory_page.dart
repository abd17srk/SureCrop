import 'package:flutter/material.dart';
import 'farmer_list_page.dart'; // Import the FarmerListPage

class SubCategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subcategories'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to FarmerListPage when the Grains button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FarmerListPage()),
                );
              },
              child: Text('Grains'),
            ),
          ],
        ),
      ),
    );
  }
}
