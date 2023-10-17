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
  // Tambahkan data mata kuliah lainnya di sini
];
