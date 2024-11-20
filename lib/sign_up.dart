import 'package:flutter/material.dart';
import 'package:loginapp/LoginPage/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:loginapp/home.dart';

class SignInUP extends StatelessWidget {
  SignInUP({super.key});

  var nameController = TextEditingController();

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
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          )),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Container(
                    height: size.height * 0.28,
                    width: size.width * 0.85,
                    child: Image(
                      image: AssetImage("assets/hey-removebg-preview.png"),
                    )),
              ),
              SizedBox(height: 5),
              Container(
                height: size.height * 0.612,
                width: size.width * 0.82,
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
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, right: 3),
                  child: Column(
                    children: [
                      Text(
                        "Create Your Account",
                        style: TextStyle(
                          fontSize: 29,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Container(
                          width: size.width * 0.71,
                          height: size.height * 0.060,
                          decoration: BoxDecoration(
                              color: Color(0xffc7b4fa),
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8, bottom: 5),
                              child: TextField(
                                controller: nameController,
                                decoration: const InputDecoration(
                                  suffixIcon: Icon(Icons.person),
                                  border: InputBorder.none,
                                  labelText: '   Name',
                                  // icon: Icon(CupertinoIcons.eye_slash_fill,size: 24,),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 7),
                      Container(
                        width: size.width * 0.71,
                        height: size.height * 0.060,
                        decoration: BoxDecoration(
                            color: Color(0xffc7b4fa),
                            borderRadius: BorderRadius.circular(16)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8, bottom: 5),
                            child: TextField(

                              decoration: const InputDecoration(
                                suffixIcon: Icon(Icons.email),
                                border: InputBorder.none,
                                labelText: '   Email',
                                // icon: Icon(CupertinoIcons.eye_slash_fill,size: 24,),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 7),
                      Container(
                        width: size.width * 0.71,
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
                                labelText: '   Password',
                                // icon: Icon(CupertinoIcons.eye_slash_fill,size: 24,),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 7),
                      Container(
                        width: size.width * 0.71,
                        height: size.height * 0.060,
                        decoration: BoxDecoration(
                            color: Color(0xffc7b4fa),
                            borderRadius: BorderRadius.circular(18)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8, bottom: 5),
                            child: TextField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                labelText: '  Confirm Password',
                                // icon: Icon(CupertinoIcons.eye_slash_fill,size: 24,),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 7),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 105, top: 10),
                          child: InkWell(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => homepage(nameController.text.toString())));
                            },
                          ),
                        ),
                        width: size.width * 0.72,
                        height: size.height * 0.055,
                        decoration: BoxDecoration(
                            color: Color(0xff442d82),
                            borderRadius: BorderRadius.circular(25)),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Already have an account ?",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                          ButtonTheme(
                            height: 15,
                            minWidth: 3,
                            child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => login()));
                                },
                                child: Text(
                                  "Log In",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black38),
                                )),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(right: 27, left: 27),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Divider(
                              thickness: 2,
                              color: Colors.black,
                            )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                        height: size.height * 0.056,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
