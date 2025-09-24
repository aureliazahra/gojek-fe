import 'package:flutter/material.dart';

class MenuLainnyaWidget extends StatelessWidget {
  const MenuLainnyaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: Image.asset("assets/images/goclub.png"),
            title: Text(
              "Go Club",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "Our new loyalty program",
              style: TextStyle(fontSize: 14),
            ),
          ),
          ListTile(
            leading: Image.asset("assets/images/gomed.png"),
            title: Text(
              "GoMed",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "Medical assistance at your fingertips",
              style: TextStyle(fontSize: 14),
            ),
          ),
          ListTile(
            leading: Image.asset("assets/images/gofood.png"),
            title: Text(
              "GoFood",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "The all-around answwer to your apetite",
              style: TextStyle(fontSize: 14),
            ),
          ),
          ListTile(
            leading: Image.asset("assets/images/gomart.png"),
            title: Text(
              "GoMart",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "Shopping for urgent needs? We got 'em!",
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
