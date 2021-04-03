import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'baiany/baany0.dart';
import 'ewara/ewara0.dart';


void main() => runApp(MaterialApp(
  home: HomeScreen(),
));

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final audioPlayers = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Container(
    //  color: Colors.pinkAccent,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/night01.jpg'),
          fit: BoxFit.cover
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
             margin: EdgeInsets.fromLTRB(20, 30, 0.5, 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/ewara.png',),
                ),
                borderRadius: BorderRadius.horizontal(left: Radius.circular(60))
              ),
              child: GestureDetector(
               onTap: (){
                 setState(() {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => ewara0()));
                 });
               },
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(0.5, 44, 20, 37),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/baianyyy.png',),
                  ),
                  borderRadius: BorderRadius.horizontal(right: Radius.circular(20))
              ),
              child: GestureDetector(
                onTap: (){
                 // audioPlayers.play("note.wav");
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => baiany0()));
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
