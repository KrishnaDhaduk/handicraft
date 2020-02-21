//------------------ DURAR HR login & Splash screen ----------------------
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: null),
                Text("Back"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 210.0),
              child: SizedBox(
                height: 150,
                width: 130,
                child: Image.network(
                    "https://tse3.mm.bing.net/th?id=OIP.inxkFQFyNH2u1vJ_rbL8vgAAAA&pid=Api&P=0&w=212&h=181"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, right: 180),
              child: Text(
                "Proceed with your",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 260),
              child: Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    suffixIcon: Icon(
                      Icons.perm_identity,
                    ),
                    hintText: "DURAR0045",
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "password",
                    suffixIcon: Icon(
                      Icons.vpn_key,
                    ),
                    hintText: "***********",
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: RaisedButton(
                padding:
                    EdgeInsets.only(left: 150, right: 150, top: 15, bottom: 15),
                onPressed: () {},
                color: Color(0xffE30031),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "Forgot Password?",
                style: TextStyle(color: Colors.black54),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
