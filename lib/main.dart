import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoeListScreen(),
    );
  }
}

class ShoeListScreen extends StatelessWidget {
  final List<Map<String, dynamic>> shoes = [
    {
      'name': 'Nike SB Zoom Blazer Mid Premium',
      'category': 'Men\'s Road Running Shoes',
      'price': '₹8,795',
      'color': Colors.purple[100],
      'image': 'assets/shoe1.png',
    },
    {
      'name': 'Nike Air Zoom Pegasus',
      'category': 'Men\'s Road Running Shoes',
      'price': '₹9,995',
      'color': Colors.green[100],
      'image': 'assets/shoe2.png',
    },
    {
      'name': 'Nike AirMax Sneakers',
      'category': 'Men\'s Road Racing Shoe',
      'price': '₹18,695',
      'color': Colors.pink[100],
      'image': 'assets/shoe3.png',
    },
    {
      'name': 'Nike Air Force 1 S50',
      'category': 'Older Kids\' Shoe',
      'price': '₹6,295',
      'color': Colors.grey[300],
      'image': 'assets/shoe4.png',
    },
    {
      'name': 'Nike Waffle One',
      'category': 'Men\'s Shoes',
      'price': '₹8,295',
      'color': Colors.yellow[100],
      'image': 'assets/shoe5.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Shoes',
          style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.png'),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: shoes.length,
        itemBuilder: (context, index) {
          final shoe = shoes[index];
          return Card(
            color: shoe['color'],
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.only(bottom: 16),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.asset(
                    shoe['image'],
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          shoe['name'],
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4),
                        Text(
                          shoe['category'],
                          style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                        ),
                        SizedBox(height: 8),
                        Text(
                          shoe['price'],
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}