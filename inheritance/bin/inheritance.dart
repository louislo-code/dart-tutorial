import 'package:inheritance/inheritance.dart' as inheritance;
class Student{
  String name , email;
  int? age = 15;
  Student(this.name, this.email, int? age);
 get getName => print(name);
 set setName(value) => name = value;
 void greeting(){
  print("${this.name}:hello teacher.");
 }
 Student.create(this.name,this.email,[this.age]);
}
class YogaStudent extends Student {
  YogaStudent(String name,String email, int? age, [String? yogaType]):super.create(name,email,age);
  String yogaType = "YinYoga";

  get getYogaType => yogaType;
  set setYogaType(String value) => yogaType = value;

  @override
  void greeting() {
    // TODO: implement greeting
    super.greeting();
  }
  @override
  String toString() {
    // TODO: implement toString
    var result = "$name love doing $getYogaType who aged $age";
    return result;
  }
}
class SoapStudent extends Student {
  SoapStudent(String name, String email, int? age):super(name,email,age);
  String soapType = "natural soap";
  get getSoapType => print(getSoapType);
  set setSoapType(String value) => soapType = value;
}
void main(List<String> arguments) {
  print('Hello world: ${inheritance.calculate()}!');
  var newYogaStudent = new YogaStudent("Jessica", "jsloveyoga@protonmail.com",30);
  print("name: ${newYogaStudent.name.toUpperCase()}");
  newYogaStudent.greeting();
  newYogaStudent.getYogaType;
  print(newYogaStudent.toString());
  // print("email: ${newYogaStudent?.email}");
  // print("Yoga Type: ${newYogaStudent?.yogaType}");
}

// using late may cause runtime errors;
