import 'package:flutter/material.dart';
import 'package:sure_crop/screens/chat_screen.dart';
import 'package:sure_crop/screens/contract_templates.dart';

class FarmerProfilePage extends StatelessWidget {
  final String name;
  final String crop;
  final String region;
  final double rating;
  final int contractsCompleted;

  // Static or constant values for additional details
  static const String description =
      'Rajesh Kumar is a dedicated farmer from UP, India. He has been farming for over 20 years, specializing in the cultivation of rice and wheat. Rajesh uses sustainable farming practices to ensure high-quality produce.';
  static const String pricePerKg = '25 Rs/kg';

  FarmerProfilePage({
    required this.name,
    required this.crop,
    required this.region,
    required this.rating,
    required this.contractsCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$name\'s Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Picture and Basic Info
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.green,
                  child: Text(
                    name[0], // First letter of the name
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      crop,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      region,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Price: $pricePerKg',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.green[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            // Ratings and Contracts Completed
            Text(
              'Rating:★★★★☆ ${rating.toStringAsFixed(1)}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Contracts Completed: $contractsCompleted',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20),
            // Farmer Description
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            // Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChatScreen(farmerName: name)),
                    ); // Navigate to chat screen
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(250, 15, 215, 15),
                    minimumSize: Size(200, 80),
                  ),
                  child: Text(
                    'Chat',
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ContractTemplatesPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(250, 15, 215, 15),
                    minimumSize: Size(200, 80),
                  ),
                  child: Text('Initiate Contract',
                      style: TextStyle(fontSize: 22, color: Colors.black)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
