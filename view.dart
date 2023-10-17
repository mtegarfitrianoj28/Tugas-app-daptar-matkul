class Course {
  final String name;
  final int sks;
  final String image;

  Course({required this.name, required this.sks, required this.image});
}

List<Course> courses = [
  Course(name: 'Animasi Komputer', sks: 3, image: 'assets/images/anikom.png'),
  Course(name: 'Data mining', sks: 3, image: 'assets/images/datmin.png'),
  Course(name: 'Mobile computing', sks: 3, image: 'assets/images/mocom.png'),
];
Membuat Tampilan Aplikasi:

dart
Copy code
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Daftar Mata Kuliah')),
        body: CourseTable(),
      ),
    );
  }
}

class CourseTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LazyGridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, 
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      children: courses.map((course) {
        return CourseCard(course: course);
      }).toList(),
    );
  }
}

class CourseCard extends StatelessWidget {
  final Course course;

  CourseCard({required this.course});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(course.image, width: 100, height: 100),
          Text(course.name),
          Text('SKS: ${course.sks}'),
        ],
      ),
    );
  }
}
