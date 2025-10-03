import 'package:flutter/material.dart';
import 'package:mental_mood/DataBase/database.dart';
import 'package:mental_mood/Pages/home_page.dart';
import 'package:provider/provider.dart';

class EmotionSelectorPage extends StatefulWidget {
  final String title;
  final EmozioneCompanion emozioneCompanion;
  const EmotionSelectorPage({super.key, required this.title, required this.emozioneCompanion});

  @override
  State<EmotionSelectorPage> createState() => _EmotionSelectorPageState();
}

class _EmotionSelectorPageState extends State<EmotionSelectorPage> {
  late AppDataBase db;
  late TextEditingController descriptionEditingController;
  late TextEditingController imgPathEditingController;
  @override
  Widget build(BuildContext context) {
    db = Provider.of<AppDataBase>(context);
    return Scaffold(
      appBar: _getSelectorAppBar(),
      body: Image.asset('assets/images/uncertain.png')
    );
  }


  _getSelectorAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
      }, icon: Icon(Icons.keyboard_arrow_left_outlined, color: Colors.black,size: 40,)),
      title: Text(
        widget.title,
        style: const TextStyle(color: Colors.black, fontSize: 30),
      ),
    );
  }
}
