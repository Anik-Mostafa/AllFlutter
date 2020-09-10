import 'package:university_data_app/university.dart';

class Teacher extends UniversityMember {
  String qualification;
  Teacher(String name, var id, String department, String gender, String age,
      this.qualification)
      : super(name, id, department, gender, age);
  teacherInfo() {
    return 'Name = $name , ID = $id , Department = $department , Gender = $gender , Qualification = $qualification';
  }
}
