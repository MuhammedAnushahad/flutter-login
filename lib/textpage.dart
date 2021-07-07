import 'package:flutter/material.dart';
import 'package:first_app/profilemodel.dart';


class textpage extends StatefulWidget {
  // const textpage({Key key}) : super(key: key);

  @override
  _textpageState createState() => _textpageState();
}

class _textpageState extends State<textpage> {

  List<ProfileModel> profileModelList = List();
  TextEditingController ProductNameController = new TextEditingController();
  TextEditingController lastNameController = new TextEditingController();
  TextEditingController ageController = new TextEditingController();
  TextEditingController salaryController = new TextEditingController();
  String Valuechoose;
  List listItem=[
    "Large","Medium","Small"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(

            child: Column(
              children: [
                TextField(
                  controller:ProductNameController,
                  maxLength: 20,
                  decoration: InputDecoration(
                      labelText: "ProductName"
                  ),
                ),

                Container(
                  child:DropdownButton(
                    hint: Text("Unit Name"),
                    value: Valuechoose,
                    onChanged: (newvalue){
                      setState(() {
                        Valuechoose=newvalue;

                      });
                    },
                    items:listItem.map((valueItem){
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem),
                      );
                    }).toList(),
                  )
                ),



                  TextField(
                    controller: lastNameController,
                    maxLength: 20,
                    decoration: InputDecoration(
                        labelText: "Qty"
                    ),
                  ),

                TextField(
                  controller: ageController,
                  maxLength: 20,
                  decoration: InputDecoration(
                      labelText: "Price"
                  ),
                ),

                TextField(
                  controller: salaryController,
                  maxLength: 20,
                  decoration: InputDecoration(
                      labelText: "Total"
                  ),
                ),

                RaisedButton(
                  onPressed: () {
                    setState(() {
                      ProfileModel profileModel=new ProfileModel();

                      profileModel.ProductName=ProductNameController.text;
                      profileModel.lastName=lastNameController.text;
                      profileModel.age=int.parse(ageController.text);
                      profileModel.salary=num.parse(salaryController.text);

                      profileModelList.add(profileModel);
                      profileModelList=profileModelList.reversed.toList();
                      ProductNameController.text = "";
                      lastNameController.text="";
                      ageController.text="";
                      salaryController.text="";
                    });
                  },
                  child: Text("Add Item"),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: profileModelList.length,
                    itemBuilder: (context, index) {

                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(profileModelList[index].ProductName),
                              Text(profileModelList[index].lastName),
                              Text(profileModelList[index].age.toString()),
                              Text(profileModelList[index].salary.toString()),
                            ],
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
