import 'package:flutter/material.dart';

class Course {
  final String name;
  final String image;
  final int sks;

  Course({
    required this.name,
    required this.image,
    required this.sks,
  });
}

final List<Course> coursesData = [
  Course(name: 'Animasi Komputer', sks: 3, image: 'assets/images/anikom.png'),
  Course(name: 'Data mining', sks: 3, image: 'assets/images/datmin.png'),
  Course(name: 'Mobile computing', sks: 3, image: 'assets/images/mocom.png'),
  // ... Add more courses
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Course List')),
        body: CourseList(),
      ),
    );
  }
}

class CourseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.7,
      ),
      itemCount: coursesData.length,
      itemBuilder: (context, index) {
        Course course = coursesData[index];
        return CourseCard(course: course);
      },
    );
  }
}

class CourseCard extends StatelessWidget {
  final Course course;

  CourseCard({required this.course});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/${course.image}.png', // Make sure to have your images in the 'assets' folder
            width: 80,
            height: 80,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(height: 8),
          Text(
            course.name,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            'SKS: ${course.sks}',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
