import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              right: -200,
              top: -170,
              child: Image(
                image: AssetImage("images/logo1.png"),
                height: 353,
                fit: BoxFit.fitHeight,
                filterQuality: FilterQuality.high,
                color: Color(0xFF1F319D).withOpacity(.07),
              )),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.arrow_back_ios_new, color: Colors.black),
                      Text(
                        'Cart',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text(
                        '',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    height: 63,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F4FD),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFFEAEAEA),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(.1),
                          offset: Offset(0, 4),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                color: const Color(0xFFC7D9FF),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.microwave,
                              size: 32,
                              color: Colors.white,
                            )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Fix Microwave',
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              'Kitchen',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black.withOpacity(.5)),
                            ),
                          ],
                        ),
                        //const Spacer(flex: 9,),
                        const SizedBox(
                          width: 50,
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                  Container(
                    height: 63,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD6E3FF).withOpacity(.4),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFFEAEAEA),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.remove_circle_rounded,
                          size: 20,
                          color: Colors.red.withOpacity(.5),
                        ),
                        const Text(
                          'Set up Microwave',
                          style: TextStyle(fontSize: 13),
                        ),
                        //const Spacer(flex: 9,),
                        const SizedBox(
                          width: 50,
                        ),
                        Text(
                          '\$22',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black.withOpacity(.5)),
                        )
                      ],
                    ),
                  ),Container(
                    height: 63,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD6E3FF).withOpacity(.4),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFFEAEAEA),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.remove_circle_rounded,
                          size: 20,
                          color: Colors.red.withOpacity(.5),
                        ),
                        const Text(
                          'Repair Microwave',
                          style: TextStyle(fontSize: 13),
                        ),
                        //const Spacer(flex: 9,),
                        const SizedBox(
                          width: 50,
                        ),
                        Text(
                          '\$80',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black.withOpacity(.5)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 13,),
                      Container(
                    height: 63,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F4FD),
                      borderRadius: BorderRadius.circular(10),
                      // border: Border.all(
                      //   width: 1,
                      //   color: const Color(0xFFEAEAEA),
                      // ),
                   
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                color: const Color(0xFFC7D9FF),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.compare_rounded,
                              size: 32,
                              color: Colors.white,
                            )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Fix Fridge',
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              '2 Service',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black.withOpacity(.5)),
                            ),
                          ],
                        ),
                        //const Spacer(flex: 9,),
                        const SizedBox(
                          width: 50,
                        ),
                        Text(
                          '\$70',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black.withOpacity(.5)),
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),SizedBox(height: 19,),
                      Container(
                    height: 63,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F4FD),
                      borderRadius: BorderRadius.circular(10),
                      // border: Border.all(
                      //   width: 1,
                      //   color: const Color(0xFFEAEAEA),
                      // ),
                   
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                color: const Color(0xFFC7D9FF),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.warehouse_sharp,
                              size: 32,
                              color: Colors.white,
                            )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Fix Washer',
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              '1 Service',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black.withOpacity(.5)),
                            ),
                          ],
                        ),
                        //const Spacer(flex: 9,),
                        const SizedBox(
                          width: 50,
                        ),
                        Text(
                          '\$135',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black.withOpacity(.5)),
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),SizedBox(height: 19,),
                      Container(
                    height: 63,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F4FD),
                      borderRadius: BorderRadius.circular(10),
                      // border: Border.all(
                      //   width: 1,
                      //   color: const Color(0xFFEAEAEA),
                      // ),
                   
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                color: const Color(0xFFC7D9FF),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.tv,
                              size: 32,
                              color: Colors.white,
                            )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Fix Computer',
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              '1 Service',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black.withOpacity(.5)),
                            ),
                          ],
                        ),
                        //const Spacer(flex: 9,),
                        const SizedBox(
                          width: 50,
                        ),
                        Text(
                          '\$30',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black.withOpacity(.5)),
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
