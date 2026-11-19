class Student {
  String name;
  int age;
  double averagePoint;

  Student(this.name, this.age, this.averagePoint);

  void printInfo() {
    print('Студент: $name, возраст: $age, средний балл: $averagePoint');
  }

  bool isExcellent() {
    return averagePoint >= 4.5;
  }
}

void main() {
  final s1 = Student('Марап', 15, 4.8);
  final s2 = Student('Джантал', 16, 4.2);
  final s3 = Student('Димоооон', 15, 4.5);

  for (final student in [s1, s2, s3]) {
    student.printInfo();
    print('Отличник: ${student.isExcellent()}');
  }
}