import 'package:capstone2_61/signUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:  const Color(0xFFF9F9F9),
      body: Stack(
        children: [
          const Positioned(
              right: -250,
              child: Image(
                image: AssetImage("images/logo1.png"),
                height: 353,
                fit: BoxFit.fitHeight,
                filterQuality: FilterQuality.high,
                color: Color.fromARGB(18, 31, 50, 157),
              )),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: SingleChildScrollView(
                child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                          child: Image(image: AssetImage("images/logo2.png"))),
                      const SizedBox(
                        height: 60,
                      ),
                      const Text(
                        'Login to your account',
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      Container(
                        height: 63,
                        //width: 329,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(59, 63, 63, 63),
                                offset: Offset(6, 4),
                                blurRadius: 10,
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              //enabledBorder: OutlineInputBorder(),
                              contentPadding: EdgeInsets.all(8),
                              disabledBorder: InputBorder.none,
                              hintText: 'Email',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 63,
                        //width: 329,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(59, 63, 63, 63),
                                offset: Offset(6, 4),
                                blurRadius: 10,
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              //enabledBorder: OutlineInputBorder(),
                              contentPadding: EdgeInsets.all(8),
                              disabledBorder: InputBorder.none,
                              hintText: 'Password',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10), // <-- Radius
    ),
                            side: BorderSide.none,
                            padding: const EdgeInsets.all(20),
                            primary: const Color(0xFF1F319D),
                            elevation: 15,
                            shadowColor: const Color(0xFF1F319D),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                                            CupertinoPageRoute(
                                                builder: (context) =>
                                                    const SignUp()));
                          },
                          child: const Center(
                              child: Text(
                            'Sign in',
                            style: TextStyle(fontSize: 20),
                          ))),
                      const SizedBox(
                        height: 56,
                      ),
                      const Center(
                          child: Text(
                        'Or sign in with -',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFF1B1B1D)),
                      )),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 63,
                              width: 99,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Padding(
                                padding: EdgeInsets.all(13.0),
                                child: Image(
                                  image: AssetImage("images/google.png"),
                                ),
                              )),
                          Container(
                              height: 63,
                              width: 99,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Padding(
                                padding: EdgeInsets.all(13.0),
                                child: Image(
                                  image: AssetImage("images/facebook.png"),
                                ),
                              )),
                          Container(
                              height: 63,
                              width: 99,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Padding(
                                padding: EdgeInsets.all(13.0),
                                child: Image(
                                  image: AssetImage("images/twitter.png"),
                                ),
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 56,
                      ),
                      Center(
                          child: RichText(
                              text: const TextSpan(text: '', children: [
                        TextSpan(
                            text: 'Don\'t have an account? ',
                            style: TextStyle(
                                color: Color(0xFF1B1B1D), fontSize: 15)),
                        TextSpan(
                            text: 'Sign up',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(179, 31, 50, 157)))
                      ]))),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
