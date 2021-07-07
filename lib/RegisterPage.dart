import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class registerpage extends StatefulWidget {
  const registerpage({Key key}) : super(key: key);

  @override
  _registerpageState createState() => _registerpageState();
}

class _registerpageState extends State<registerpage> {
  bool isMaleselected =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child:  Column(

          children: [

            Text("Sign Up",
            style:
            TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,

            ),
            ),


            //sign up widget

            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding:
                const EdgeInsets.only(left: 20.0, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    labelText: ("First Name"),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: ("Last Name"),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              height: 20,
            ),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)

                  ),
                  color: isMaleselected?Colors.red[300]:Colors.white,
                  child: Container(
                    height: 70,
                    width: 70,
                    child: Center(
                      child: Text("Male",
                      style:TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      )

                    ),
                  ),
                ),
              ),
                onTap: (){
                  isMaleselected=true;
                  setState(() {

                  });
                }
              )
            ),

              Expanded(
              child: GestureDetector(
              child: Card(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15)

    ),
    color: isMaleselected?Colors.red[300]:Colors.white,
    child: Container(
    height: 70,
    width: 70,
    child: Center(
    child: Text("Female",
    style:TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20
    ),

    ),
    ),
    ),
    ),
    )
              ),
        Padding(
          padding: const EdgeInsets.all(15.0),
        ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: ("Email Id"),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: ("Phone Number"),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),


            SizedBox(height: 30),
            Center(
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red[300],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: (){

                    },
                  ),
                )
            ),
          ],
      ),


      ]
    )


)
    );
  }
}
