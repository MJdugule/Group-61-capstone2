import 'package:capstone2_61/details.dart';
import 'package:flutter/cupertino.dart';
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
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 28.0),
                child: Text(
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
                        color: const Color(0xFFD3D3D3),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration:  const InputDecoration(
                                border: InputBorder.none,
                                //enabledBorder: OutlineInputBorder(),
                                contentPadding: EdgeInsets.all(8),
                                disabledBorder: InputBorder.none,
                                hintText: 'Search appliances',
                                hintStyle: TextStyle(
                                  color: Color(0xFFD3D3D3),
                                ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ImageIcon(AssetImage('images/search.png'), color: Color(0xFFD3D3D3),),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 28.0, right: 28),
                child: Text('Offers', style: TextStyle(fontSize: 20),),
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 65,
                          width: MediaQuery.of(context).size.width/2.5,
                          decoration: const BoxDecoration(
                              color: Color(0xFFCAE8F2),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30))),
                                  child: const Center(child: Text('untill june 30th', style: TextStyle(fontSize: 19),)),
                        ),
                        Container(
                          height: 180,
                           width: MediaQuery.of(context).size.width/2.5,
                          decoration: const BoxDecoration(
                              color: Color(0xFFEEEDF3),
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(30))),
                          child: Stack(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top:25.0),
                                child: Text('back 5% \n   each \n repair', style: TextStyle(fontSize: 19),),
                              ),
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
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 65,
                           width: MediaQuery.of(context).size.width/2,
                          decoration: const BoxDecoration(
                              color: Color(0xFFEEEDF3),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30))),
                                  child: const Center(child: Text('valid untill july', style: TextStyle(fontSize: 19),)),
                        ),
                        Container(
                          height: 180,
                          width: MediaQuery.of(context).size.width/2,
                          decoration: const BoxDecoration(
                              color: Color(0xFFD1D3FA),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(30))),
                          child: Stack(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top:25.0, left: 30),
                                child: Text('Sale on \nappliances \nrepair!', style: TextStyle(fontSize: 19),),
                              ),
                              Positioned(
                                  right: 0,
                                  bottom: 10,
                                  child: ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                          bottomRight: Radius.circular(30)),
                                      child: Image.asset('images/machine.png')))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 34,),
              const Padding(
                padding: EdgeInsets.only(left: 28.0, right: 28),
                child: Text('We can fix it', style: TextStyle(fontSize: 20),),
              ),
                   const SizedBox(height: 19,),
              Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(19)
                      ),
                      child: const Center(child: Text('Offers', style: TextStyle(color: Colors.white, fontSize: 16),)),
                    ),
                    const Text('Kitchen'),
                    const Text('Livingroom'),
                    const Text('Bathroom'),
                  ],
                ),
              ),
               const SizedBox(height: 14,),
              Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28),
                child: InkWell(
                  onTap: () {
                     Navigator.of(context).push(
                                            CupertinoPageRoute(
                                                builder: (context) =>
                                                    Details()));
                  },
                  child: Container(
                    height: 63,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD6E3FF).withOpacity(.4),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: const Color(0xFFC7D9FF),
                               borderRadius: BorderRadius.circular(10)
                          ),
                          child: const Icon(Icons.microwave, size: 32, color: Colors.white,)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Fix Microwave', style: TextStyle(fontSize: 13),),
                            Text('Kitchen', style: TextStyle(fontSize: 12, color: Colors.black.withOpacity(.5)),),
                          ],
                        ),
                        //const Spacer(flex: 9,),
                        const SizedBox(width: 50,),
                        const Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                ),
              ),
               const SizedBox(height: 19,),
              Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28),
                child: Container(
                  height: 63,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD6E3FF).withOpacity(.4),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: const Color(0xFFC7D9FF),
                             borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Icon(Icons.live_tv, size: 32, color: Colors.white,)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Fix Tv set', style: TextStyle(fontSize: 13),),
                          Text('Living room', style: TextStyle(fontSize: 12, color: Colors.black.withOpacity(.5)),),
                        ],
                      ),
                      //const Spacer(flex: 9,),
                      const SizedBox(width: 50,),
                      const Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        )
      ]),
    );
  }
}
