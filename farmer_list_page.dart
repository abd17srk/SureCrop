import 'package:flutter/material.dart';
import 'farmer_profile_page.dart'; // Import the FarmerProfilePage

class FarmerListPage extends StatelessWidget {
  final List<Map<String, dynamic>> farmers = [
    {
      'name': 'Rajesh Kumar',
      'crop': 'Wheat',
      'region': 'Uttar Pradesh',
      'rating': 4.5,
      'contractsCompleted': 12
    },
    {
      'name': 'Sunita Verma',
      'crop': 'Rice',
      'region': 'West Bengal',
      'rating': 3.7,
      'contractsCompleted': 8
    },
    {
      'name': 'Wasee Singh',
      'crop': 'Rice',
      'region': 'Punjab',
      'rating': 5.0,
      'contractsCompleted': 8
    },
    {
      'name': 'Rampal',
      'crop': 'Rice',
      'region': 'Haryana',
      'rating': 2.6,
      'contractsCompleted': 8
    },
    // Add more farmers as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farmers List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: farmers.length,
          itemBuilder: (context, index) {
            final farmer = farmers[index];
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FarmerProfilePage(
                          name: farmer['name']!,
                          crop: farmer['crop']!,
                          region: farmer['region']!,
                          rating: farmer['rating']!,
                          contractsCompleted: farmer['contractsCompleted']!,
                        ),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.green,
                        child: Text(
                          farmer['name']![0],
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            farmer['name'] ?? '',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            farmer['crop'] ?? '',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            farmer['region'] ?? '',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
