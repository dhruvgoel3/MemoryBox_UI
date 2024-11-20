import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/sign_up.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width * 1,
          height: size.height * 1,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Color(0xff806ff0), Color(0xffc499f9)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 1),
                height: size.height * 0.29,
                width: size.height * 0.38,
                child: Image(
                    image: AssetImage("assets/login-removebg-preview.png")),
              ),
              SizedBox(height: 10),
              Container(
                height: size.height * 0.56,
                width: size.width * 0.856,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black,
                        blurRadius: 1,
                      )
                    ],
                    gradient: LinearGradient(
                        colors: [Color(0xff7567ed), Color(0xffb58ef7)],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft)),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 203, left: 2, top: 12),
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 140),
                      child: Text(
                        "Glad to had your back",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Container(
                        width: size.width * 0.73,
                        height: size.height * 0.060,
                        decoration: BoxDecoration(
                            color: Color(0xffc7b4fa),
                            borderRadius: BorderRadius.circular(16)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, bottom: 5),
                          child: TextField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              labelText: '  Email',
                              
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 7),
                    Container(
                      width: size.width * 0.73,
                      height: size.height * 0.060,
                      decoration: BoxDecoration(
                          color: Color(0xffc7b4fa),
                          borderRadius: BorderRadius.circular(16)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, bottom: 5),
                          child: TextField(
                            decoration: const InputDecoration(
                            suffixIcon: Icon(CupertinoIcons.eye_slash_fill),
                              border: InputBorder.none,
                              labelText: ' Password',
                              // icon: Icon(CupertinoIcons.eye_slash_fill,size: 24,),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: size.height * 0.050,
                      width: size.width * 0.730,
                      decoration: BoxDecoration(
                          color: Color(0xff442d82),
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: Text(
                          textAlign: TextAlign.center,
                          "Log In",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 133),
                      child: Text(
                        "Forgot Password ?",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            color: Colors.black38),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Don't have an account ?",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: TextButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) => SignInUP()));
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black38),
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 38, left: 38),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Divider(
                                thickness: 2,
                                color: Colors.black,
                              )),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text("Or Sign Up with"),
                          ),
                          Expanded(
                              child: Divider(
                                thickness: 2,
                                color: Colors.black,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: size.height * 0.050,
                      width: size.width * 0.699,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 19,
                            backgroundImage: AssetImage("assets/google.webp"),
                            backgroundColor: Colors.white,
                          ),
                          Text(
                            "Sign Up With Gmail",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
