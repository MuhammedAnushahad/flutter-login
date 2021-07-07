





import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool isRememberChecked=false;
  bool isSignIn=true;
  List<String>item=List();
  String temp;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.red[300],
                    radius: 50,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Text(
                          "Sign In ",
                          style:
                          TextStyle(fontWeight: FontWeight.bold,
                              fontSize: isSignIn?25:15),
                        ),
                        onTap: (){
                          isSignIn=true;
                          setState(() {

                          });
                        },
                      ),
                      Text(
                        " / ",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: (25)),
                      ),
                      GestureDetector(
                        child: Text(
                          "Sign Up ",
                          style:
                          TextStyle(fontWeight: FontWeight.bold,
                              fontSize: !isSignIn?25:15),
                        ),
                        onTap: (){
                          isSignIn=false;
                          setState(() {

                          });
                        },
                      )
                    ],
                  ),
                ),

                isSignIn?Column(
                  children: [
                    //sigh in widgets

                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(50)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: TextField(
                          onChanged:(str) {
                            temp=str;
                          },
                          maxLength: 20,
                          decoration: InputDecoration(
                            alignLabelWithHint: true,
                            labelText: ("Email"),
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
                            labelText: ("Password"),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text("Forgot Password?",
                            textAlign: TextAlign.end,),
                        ),
                      ),
                      onTap: (){

                      },
                    ),
                    Row(
                      children: [
                        Checkbox(
                            checkColor: Colors.white,
                            activeColor:  Colors.red[300],
                            value: isRememberChecked,
                            onChanged: (bool value) {
                              setState(() {
                                isRememberChecked = !isRememberChecked;
                              });
                            }),
                        Text("Remember")
                      ],
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

                              "Sign In",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: (){setState(() {
                              item.add(temp);
                            });


                            ListView(
                              shrinkWrap: true,
                              children: item.map((element)=>
                              Text(element)).toList(),
                            );

                            },
                          ),
                        )
                    ),

                  ],
                ):

              Column(
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
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
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
                  ],
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}