import 'package:flutter/material.dart';
import 'package:loginapp/sign_up.dart';

class homepage extends StatelessWidget {
  var namefromHome;

   homepage(this.namefromHome);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height * 1,
        width: size.width * 1,
        decoration: BoxDecoration(color: Colors.yellow),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Text(
                "Welcome,$namefromHome",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pop(MaterialPageRoute(builder: (context) => SignInUP()));
                },
                child: Text(
                  "Go back to signup page"
                  ,style: TextStyle(
                      fontWeight: FontWeight.w800, color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}
