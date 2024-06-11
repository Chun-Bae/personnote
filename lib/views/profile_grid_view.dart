import 'package:flutter/material.dart';

class ProfileGridView extends StatelessWidget {
  final List<Map<String, String>> profiles = [
    {'name': 'John Doe', 'image': 'assets/profile1.jpg'},
    {'name': 'Jane Smith', 'image': 'assets/profile2.jpg'},
    {'name': 'Alice Johnson', 'image': 'assets/profile3.jpg'},
    {'name': 'Bob Brown', 'image': 'assets/profile4.jpg'},
    {'name': 'Charlie Davis', 'image': 'assets/profile5.jpg'},
    {'name': 'Diana Evans', 'image': 'assets/profile6.jpg'},
    {'name': 'Edward Harris', 'image': 'assets/profile7.jpg'},
    {'name': 'Fiona Jackson', 'image': 'assets/profile8.jpg'},
    {'name': 'George King', 'image': 'assets/profile9.jpg'},
    {'name': 'Helen Lee', 'image': 'assets/profile10.jpg'},
    {'name': 'Irene Martinez', 'image': 'assets/profile11.jpg'},
    {'name': 'Jack Nelson', 'image': 'assets/profile12.jpg'},
    {'name': 'Karen Owens', 'image': 'assets/profile13.jpg'},
    {'name': 'Liam Peterson', 'image': 'assets/profile14.jpg'},
    {'name': 'Monica Quinn', 'image': 'assets/profile15.jpg'},
    {'name': 'Nathan Roberts', 'image': 'assets/profile16.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Grid'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 3 / 4, // 카드의 가로 세로 비율을 3/4로 설정
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: profiles.length,
          itemBuilder: (context, index) {
            return ProfileCard(
              name: profiles[index]['name']!,
              imagePath: profiles[index]['image']!,
            );
          },
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String imagePath;

  ProfileCard({required this.name, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFFE878),
      shadowColor: Color(0xFFFFD447),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 1 / 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 8),
            Expanded(
                child: Text(
              name,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
