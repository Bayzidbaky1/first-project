import 'package:flutter/material.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body:ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Card(
              elevation: 5,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("asssets/image.png"),
                  backgroundColor: Color(0xffFADFE0),
                ),
                title: Text(
                  "Apple Watch",
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  "Series 6 . Red",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
                trailing: Text(
                  "\$ 359",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color(0xff5956E9)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
