import 'package:tutorial/tutorial.dart' as tutorial;

// OOP
class Customer{
  // Customer({required this.name,required this.age,required this.email});

  late String name;
  late int age;
  late String email = "";
   Customer(String name , int age, [String? email]){
    this.name=name;
    this.age=age;
    this.email = "default@outlook.com";
  }
  Customer.initialize(){
    name = "defaultStudent";
    age = 16;
    email= "example@protonmail.com";
  }
  //Getter and Setter
  String get getName => name;
  set setEmail(String value) => email = value;
}



String globalPoppy = "GGPoppy";
void doingTask(String task){
  if(task.contains("cod")){
    print("nice $task");
  } else{
    print("you are now working on $task");
  }
}
void bullyPoppy(){
  globalPoppy = "fkPoppy";
  print(globalPoppy);
}
String excelProcessingCommand(int excelAmount, String eventName, [int? theBatchSize]){
  var finalResult = "$eventName will be having $excelAmount excels splited by $theBatchSize batches for system to process.";
  if (theBatchSize==null){
    finalResult = "$eventName will be having $excelAmount excels for system to process.";
  }
  return finalResult;
}
String getTask() => "Flutter+FastAPI+DevOps+MachineLearning";
void main(List<String> arguments) {
  int x =0;
  print('Hello world: ${tutorial.calculate()}!');
    // do while allow us at least run once the expression
  do{
  print("try running");
  }
  while(x==1);
  print(getTask());
  doingTask("coding");
  //switch case
  var business = "ed";

  switch(business) {
    case "ed":
      print("business looks sustainable");
      break;
    case "prop":
      print("property tech");
      break;
    default:
      print("default");
  }
  print(excelProcessingCommand(31, "Soap"));
  print(globalPoppy);
  bullyPoppy();
  print(globalPoppy);
  var newComer = new Customer("mary",18);
  print(newComer.name);
  print(newComer.email);
  var defaultComer = new Customer.initialize();
  print(defaultComer.name);
  defaultComer.setEmail="devops@protonmail.com";
  print(defaultComer.email);
  print(defaultComer.getName);
}
