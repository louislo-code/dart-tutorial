import 'package:list/list.dart' as list;

void main(List<String> arguments) {
  var list =[10,93,99,100];
  List<String> _files = List<String>.empty(growable: true);
  _files.add("restrictedFile");
  _files.add("guaranteeFile");
  print(_files);

  for(int i=0;i<_files.length;i++){
    print(_files[i]);
  }
  for(int i=0;i<list.length;i++){
    if(list[i]%2==0) print("${list[i]} is multiple of 2");
    else print("${list[i]} is not multiple of 2");
  }

  //Mapping
  var clients = {
    "yoga":"kinggu",
    "ed":"mybusiness",
    "personal":"youtube"
  };
  print(clients["yoga"]);
  clients.forEach((key, value) {print(value);});
  var keys = clients.keys;
  var values = clients.values;
  print(keys);
  print(values);
}
