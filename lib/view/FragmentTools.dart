import 'package:flutter/material.dart';

class FragmentToolsPage extends StatelessWidget {
  const FragmentToolsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fragment Tools'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),
              _buildMenuItem(
                title: 'TOUR INFO',
                icon: Icons.account_circle,
              ),
              _buildMenuItem(
                title: 'DAY EXPENSE',
                icon: Icons.money,
              ),
              _buildMenuItem(
                title: 'SALES EXEC',
                icon: Icons.person,
              ),
              const SizedBox(height: 20),
              _buildMenuItem(
                title: 'STOCK INQUIRY',
                icon: Icons.search,
              ),
              _buildMenuItem(
                title: 'CATEGORY WISE DOWNLOAD',
                icon: Icons.download,
              ),
              _buildMenuItem(
                title: 'DATABASE',
                icon: Icons.storage,
              ),
              const SizedBox(height: 20),
              _buildMenuItem(
                title: 'PRINTER',
                icon: Icons.print,
              ),
              _buildMenuItem(
                title: 'SYNCHRONIZE',
                icon: Icons.sync,
              ),
              _buildMenuItem(
                title: 'UPLOAD',
                icon: Icons.cloud_upload,
              ),
              const SizedBox(height: 20),
              _buildMenuItem(
                title: 'PROMO IMAGE',
                icon: Icons.image,
              ),
              _buildMenuItem(
                title: 'PRINTER MAC ADDRESS',
                icon: Icons.print,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem({required String title, required IconData icon}) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, size: 36, color: Colors.blue),
          const SizedBox(width: 16),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
