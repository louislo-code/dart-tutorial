// import 'dart:js_util';

import 'package:abstract_pj/abstract_pj.dart' as abstract_pj;

//abstract class cannot be created!
abstract class Class{
  void register();

  void createClass();
}

class YogaClass implements Class{
  String name, address;
  DateTime time;
  YogaClass(this.name,this.address,this.time);
  @override
  void register() {
    // TODO: implement register
  }
  @override
  void createClass() {
    // TODO: implement createClass
  }
  @override
  String toString()=>"$name class will be hold on $address at $time";

}

abstract class healing{
  void selfHealing();
}

class healingYogaClass extends YogaClass implements healing{
  healingYogaClass(name, address,time):super(name,address, time);
  @override
  void selfHealing() {
     print("$name brings us to self-healing journey");
  }
}
void main(List<String> arguments) {
  print('Hello world: ${abstract_pj.calculate()}!');
  var thisYogaClass =new YogaClass("Kundalili", "Kwun Tong", DateTime.now());
  print(thisYogaClass.time);
  print(thisYogaClass.toString());
  var newHealingYogaCourse = new healingYogaClass("YinHealing Yoga", "Kwai Fong", DateTime.now());
  print(newHealingYogaCourse.toString());
  newHealingYogaCourse.selfHealing();
}
