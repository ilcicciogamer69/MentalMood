import 'package:flutter/material.dart';
import 'package:mental_mood/DataBase/database.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late AppDataBase dataBase;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    dataBase = Provider.of<AppDataBase>(context);
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        body: FutureBuilder<List<EmozioneData>>(
            builder: (context, snapshot){
              if(snapshot.hasData){
                List<EmozioneData>? listEmozioni = snapshot.data;
                if(listEmozioni!=null ){
                  if(listEmozioni.isEmpty){
                    return Center(
                      child: Text(
                        "Non sono state trovate emozioni. Riprova più tardi.",
                        style: TextStyle(fontSize: 60),
                      ),
                    );
                  }else{
                   return listEmozioniUI(listEmozioni);
                  }
                }
              }else if(snapshot.hasError){
                return Center(
                  child: Text(
                    snapshot.error.toString(),
                    style: TextStyle(fontSize: 60),
                  ),
                );
              }
              return Center(
                child: Text(
                    "Non sono state trovate emozioni. Riprova più tardi.",
                    style: TextStyle(fontSize: 60),
                ),
              );
            },
            future: _getEmozioneFromDataBase(),
        ),
    );
  }
  Future<List<EmozioneData>> _getEmozioneFromDataBase() async{
    return await dataBase.getEmozioneList();
  }
  Widget listEmozioniUI(List<EmozioneData> listEmozioni) {
    return Container();
  }
}
