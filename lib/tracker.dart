import 'package:flutter/material.dart';
import 'package:loginapp/chatbox.dart';

class Mypage extends StatelessWidget {
  const Mypage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xffc398f9),
            Color(0xff7b6bef),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Container(
                  child: Image(
                      image: AssetImage(
                    "assets/doctor-removebg-preview.png",
                  )),
                  height: size.height * 0.3,
                  width: size.height * 0.3,
                  // decoration: BoxDecoration(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ".",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "...",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Column(
                children: [
                  Text(
                    "Prescription & Dosage",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        fontFamily: "Cabin",
                        color: Colors.white),
                  ),
                  Text(
                    "Tracker",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        fontFamily: "Cabin",
                        color: Colors.white),
                  ),
                ],
              ),
              height: size.height * 0.12,
              width: size.height * 0.45,
            ),
            Container(
                // margin: ,
                height: size.height * 0.1,
                width: size.height * 0.45,
                child: Column(
                  children: [
                    Text(
                      "Memory Box is mobile based application backed by",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontFamily: "Cabin",
                          color: Colors.white),
                    ),
                    Text(
                      "a web-application that ensures compatibility and",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: "Cabin",
                          color: Colors.white),
                    ),
                    Text(
                      "stability in its own accord",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontFamily: "Cabin",
                          color: Colors.white),
                    ),
                  ],
                )
                // Text
                ),
            SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => chatbox()));
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xff442d82)),
              child: Text(
                "LET'S GO",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            )
          ],
        ),
        // child: Image(image: AssetImage("assets")),
      ),
    );
  }
}
