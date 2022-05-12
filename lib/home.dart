import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [Image.asset('images/cart.png')],
      ),
      body: Stack(children: [
        const Positioned(
            left: -220,
            bottom: -100,
            child: Image(
              image: AssetImage("images/logo1.png"),
              height: 353,
              fit: BoxFit.fitHeight,
              filterQuality: FilterQuality.high,
              color: Color.fromARGB(18, 31, 50, 157),
            )),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: const Text(
                'What\'s broken?',
                style: TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28),
              child: Container(
                height: 63,
                //width: 329,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                      color: Color(0xFFD3D3D3),
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        //enabledBorder: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(8),
                        disabledBorder: InputBorder.none,
                        hintText: 'Search appliances',
                        hintStyle: TextStyle(
                          color: Color(0xFFD3D3D3),
                        ),
                        suffixIcon: Icon(Icons.book)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28),
              child: Text('Offers', style: TextStyle(fontSize: 20),),
            ),
            Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 65,
                        width: 200,
                        decoration: const BoxDecoration(
                            color: Color(0xFFCAE8F2),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30))),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        decoration: const BoxDecoration(
                            color: Color(0xFFEEEDF3),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30))),
                        child: Stack(
                          children: [
                            Text('back 5% \n each \n repair'),
                            Positioned(
                                right: 0,
                                bottom: 0,
                                child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        bottomRight: Radius.circular(30)),
                                    child: Image.asset('images/girl.png')))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        )
      ]),
    );
  }
}
