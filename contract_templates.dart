import 'package:flutter/material.dart';
import 'package:sure_crop/screens/edit_contracts.dart';

class ContractTemplatesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Contract Template'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose a Contract Type:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25),
            // Contract Template List
            Expanded(
              child: ListView(
                children: [
                  _buildContractOption(context, 'Standard Contract'),
                  _buildContractOption(context, 'Fixed-Price Contract'),
                  _buildContractOption(context, 'Cost-Plus Contract'),
                  _buildContractOption(context, 'Input-Output Contract'),
                  _buildContractOption(context, 'Production Support Contract'),
                  _buildContractOption(context, 'Market-Linked Contract'),
                  _buildContractOption(context, 'Labor Service Contract'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget to build each contract option
  Widget _buildContractOption(BuildContext context, String contractName) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 4,
      child: ListTile(
        title: Text(
          contractName,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditContractPage()),
          );
        },
      ),
    );
  }
}
