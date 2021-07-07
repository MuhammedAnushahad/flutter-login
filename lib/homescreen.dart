import 'package:flutter/material.dart';
  class HomeScreen extends StatefulWidget {
    @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List imageList=[];

  @override
  void initState() {


    imageList.add("exchange.png");
    imageList.add("send.png");
    imageList.add("coupon.png");
    imageList.add("wallet.png");
    imageList.add("paybill.png");
    imageList.add("more.png");


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left:15.0,right: 15,top: 10,bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(child: Icon(Icons.home)),
              Card(child: Icon(Icons.menu)),
              Card(child: Icon(Icons.notification_important)),
              Card(child: Icon(Icons.person)),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black38,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(0),
              child: Row(
                children: [

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(

                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://fijitimes.net.au/wp-content/uploads/2020/05/allu.jpg"),
                            radius: 30,
                          ),


                          Padding(
                            padding: const EdgeInsets.only(left: 20),


                            child: Text("Hi, anu",
                             style:
                              TextStyle(
                                color: Colors.grey
                              ),
                            ),



                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(icon: Icon(Icons.apps),
                      color: Colors.grey,
                      onPressed: (){

                      }),
                  // GestureDetector(
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(left: 180),
                  //     child: Icon(
                  //       Icons.menu
                  //     ),
                  //   ),
                  // )

                ],

              ),
            ),

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 199,

                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: imageList.length,
                        itemBuilder: (context, index){
                          return  Card(
                            child: Container(
                              width: MediaQuery.of(context).size.width-15,
                              decoration: BoxDecoration(
                                color: Colors.indigoAccent,
                                borderRadius: BorderRadius.circular(28),
                              ),
                              child: Image.asset("assets/"+imageList[index]),
                            ),

                          );
                        },
                      ),
                    ),

                    Container(
                      height: 205,
                      width: MediaQuery.of(context).size.width,
                      child: Expanded(
                        child: Row(
                          children: [

                            Expanded(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                elevation: 5,
                                child: Container(
                                  height: 110,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(

                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/send.png",height: 60,),

                                        Container(height: 10,),
                                        Text("Transfer",
                                          textAlign: TextAlign.center,)

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                elevation: 5,
                                child: Container(
                                  height: 110,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(

                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/wallet.png",height: 60,),

                                        Container(height: 10,),
                                        Text("Wallet",
                                          textAlign: TextAlign.center,)

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                elevation: 5,
                                child: Container(
                                  height: 110,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(

                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/coupon.png",height: 60,),

                                        Container(height: 10,),
                                        Text("Voucher",
                                          textAlign: TextAlign.center,)

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                elevation: 5,
                                child: Container(
                                  height: 110,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/paybill.png",height: 60,),

                                        Container(height: 10,),
                                        Text("Pay bills",
                                          textAlign: TextAlign.center,)

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                elevation: 5,
                                child: Container(
                                  height: 110,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/exchange.png",height: 60,),

                                        Container(height: 10,),
                                        Text("Exchange",
                                          textAlign: TextAlign.center,)

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                elevation: 5,
                                child: Container(
                                  height: 110,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/more.png",height: 60,),

                                        Container(height: 10,),
                                        Text("More",
                                          textAlign: TextAlign.center,)

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}


//Container(
//height: 199,
//child: ListView.builder(
//scrollDirection: Axis.horizontal,
//padding: const EdgeInsets.only(left: 16,right: 6),
//itemBuilder: (context, index){
//return Container(
//margin: EdgeInsets.only(right: 10),
//height: 199,
//width: 344,
//decoration: BoxDecoration(
////color: Colors.blue.shade600
//),
//);
//},
//),
//),
