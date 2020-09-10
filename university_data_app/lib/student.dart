import 'package:university_data_app/university.dart';

class Student extends UniversityMember {
  String cgp;
  Student(String name, var id, String department, String gender, String age,
      this.cgp)
      : super(name, id, department, gender, age);
  studentInfo() {
    return 'Name = $name , ID = $id , Department = $department , Gender = $gender , CGP = $cgp , Age =$age';
  }
}
