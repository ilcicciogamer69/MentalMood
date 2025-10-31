import 'package:flutter/material.dart';
import 'package:mental_mood/DataBase/database.dart';
import 'package:mental_mood/Pages/menu.dart';

class UserSettingsPage extends StatelessWidget {
  final UtenteData? user;
  const UserSettingsPage({super.key, required UtenteData? this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.jpg"),
              fit: BoxFit.cover,
            )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    Text("Bentornato, ",style: TextStyle(color: Colors.black, fontSize: 67)),
                    Text(
                        user!.nome,
                        style: TextStyle(color: Colors.black, fontSize: 67)
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    Text("Bentornato, ",style: TextStyle(color: Colors.black, fontSize: 67)),
                    Text(
                        user!.username,
                        style: TextStyle(color: Colors.black, fontSize: 67)
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Menu(user: user),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
