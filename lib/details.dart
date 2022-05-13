import 'package:capstone2_61/cart.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFFF3B29E).withOpacity(.4),
          foregroundColor: Colors.transparent,
          elevation: 0,
          shadowColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            'Fix Microwave',
            style: TextStyle(color: Colors.black),
          ),
          leading: const Icon(Icons.arrow_back_ios_new, color: Colors.black)),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 485,
            decoration: BoxDecoration(
                color: const Color(0xFFF3B29E).withOpacity(.4),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Stack(
              children: [
                Positioned(
                    right: -150,
                    bottom: 0,
                    child: Image(
                      image: const AssetImage("images/logo1.png"),
                      height: 353,
                      fit: BoxFit.fitHeight,
                      filterQuality: FilterQuality.high,
                      color: const Color(0xFF1F319D).withOpacity(.07),
                    )),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(80),
                          bottomRight: Radius.circular(80)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.4),
                          offset: const Offset(0, 30),
                          blurRadius: 25,
                        ),
                      ],
                    ),
                    child: const Image(
                      image: AssetImage("images/micro.png"),

                      fit: BoxFit.fitHeight,
                      filterQuality: FilterQuality.high,
                      // color: Color.fromARGB(53, 103, 109, 138),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(26.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(252, 63),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), // <-- Radius
                            ),
                            side: BorderSide.none,
                            //padding: const EdgeInsets.all(20),
                            primary: const Color(0xFFF3B29E).withOpacity(.4),
                            elevation: 0),
                        onPressed: () {
                           Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Cart()));
                        },
                        child: const Text(
                          'Reviews',
                          style: TextStyle(color: Colors.black),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(94, 63),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), // <-- Radius
                            ),
                            side: BorderSide.none,
                            //padding: const EdgeInsets.all(20),
                            primary: Colors.black,
                            elevation: 0),
                        onPressed: () {},
                        child: Icon(Icons.message)),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 23.0),
                  child: Container(
                    height: 63,
                     decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFFE8E8E8),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Repair'),
                        Text('\$56')
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 23.0),
                  child: Container(
                    height: 63,
                     decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFFE8E8E8),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Setup'),
                        Text('\$12')
                      ],
                    ),
                  ),
                ),
                Padding(
                 padding: const EdgeInsets.only(top: 23.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(169, 63),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // <-- Radius
                              ),
                              side: BorderSide.none,
                              //padding: const EdgeInsets.all(20),
                              primary: Colors.black,
                              elevation: 0),
                          onPressed: () {},
                          child: const Text(
                            'Order repair',
                            style: TextStyle(color: Colors.white),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(169, 63),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // <-- Radius
                              ),
                              side: BorderSide( width: 1,
                        color: const Color(0xFFE8E8E8)),
                              //padding: const EdgeInsets.all(20),
                              primary: Colors.white,
                              elevation: 0),
                          onPressed: () {},
                          child:const Text(
                            'Order setuo',
                            style: TextStyle(color: Colors.black),
                          )),
                    ],
                  ),
                ),
                
              ],
            ),
          )
        ],
      )),
    );
  }
}
