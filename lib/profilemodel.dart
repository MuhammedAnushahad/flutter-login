import 'dart:convert';


// @JsonSerializable()
class ProfileModel {

  String ProductName,lastName;
  // bool isMale;
  int age;
  num salary;

 ProfileModel(
     {this.ProductName,this.lastName,this.age,this.salary});

}
// factory AudioModel.fromJson(dynamic json) {
//   return new AudioModel(
//     actionFlag: json['ACTION_FLAG'],
//
//   );
// }
// static Map<String, dynamic> preferenceToJson(AudioModel audioModel) => {
//   'ACTION_FLAG': audioModel.actionFlag,
//
// };