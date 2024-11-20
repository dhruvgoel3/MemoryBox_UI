import 'package:flutter/material.dart';
import 'package:loginapp/training.dart';

class progresstracker extends StatelessWidget {
  const progresstracker({super.key});

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
              padding: const EdgeInsets.only(top: 100),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  child: Image(
                      image: AssetImage(
                    "assets/chand-removebg-preview.png",
                  )),
                  height: size.height * 0.36,
                  width: size.height * 0.3,
                  // decoration: BoxDecoration(color: Colors.white),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("..", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),),
                Text(".",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.black),),
                Text(".",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),),
              ],
            ),
            SizedBox(height: 0),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      "Progress Tracker",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                          fontFamily: "Cabin",
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              height: size.height * 0.1,
              width: size.height * 0.45,
            ),
            Container(
                // margin: ,
                height: size.height * 0.1,
                width: size.height * 0.49,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 18),
                  child: Column(
                    children: [
                      Text(
                        "Chat Bot is mobile based application backed by",
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
                            fontSize: 15,
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
                  ),
                )
                // Text
                ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) => training()));
                ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff442d82),
                );
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xff442d82)),
              child: Text("Skip"),
            )
          ],
        ),
        // child: Image(image: AssetImage("assets")),
      ),
    );
  }
}
