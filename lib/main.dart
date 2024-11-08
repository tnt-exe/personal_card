import 'package:flutter/material.dart';
import 'package:personal_card/card_tile.dart';
import 'package:simple_icons/simple_icons.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("images/avatar.jpg"),
                    ),
                    Text(
                      "Tyne",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "PlaywriteGBS",
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5,
                      ),
                    ),
                    Text(
                      "FLUTTER DEV WANNABE",
                      style: TextStyle(
                        color: Colors.white70,
                        fontFamily: "SourceSans3",
                        fontSize: 20,
                        letterSpacing: 2.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                  width: 150,
                  child: Divider(
                    color: Colors.white60,
                    thickness: 0.5,
                  ),
                ),
                Container(
                  width: 500,
                  margin: const EdgeInsets.only(
                    left: 50,
                    right: 50,
                    top: 10,
                  ),
                  child: const Column(
                    children: [
                      CardTile(
                        text: "+84 941-7617-88",
                        icon: Icons.phone,
                        isPhone: true,
                      ),
                      CardTile(
                        text: "github.com/tnt-exe",
                        icon: SimpleIcons.github,
                      ),
                      CardTile(
                        text: "truongthanh717@gmail.com",
                        icon: SimpleIcons.gmail,
                        isMail: true,
                      ),
                      CardTile(
                        text: "linkedin.com/in/tnt-exe",
                        icon: SimpleIcons.linkedin,
                      ),
                      CardTile(
                        text: "facebook.com/tnt.259",
                        icon: SimpleIcons.facebook,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
