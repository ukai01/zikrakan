import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:zikrakan/main.dart';
import 'package:zikrakan/ewara/ewara0.dart';
import 'package:zikrakan/baiany/baany0.dart';
import 'ewara3.dart';
import 'ewara5.dart';
class ewara4 extends StatefulWidget {
  @override
  _ewara4State createState() => _ewara4State();
}

class _ewara4State extends State<ewara4> {

  Duration _duration = Duration();
  Duration _position = Duration();

  AudioPlayer advancedA;
  AudioCache audioCachea;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initPlaers();
  }


  void initPlaers(){
    advancedA = AudioPlayer();
    audioCachea = AudioCache(fixedPlayer: advancedA);

    advancedA.durationHandler = (d) => setState((){
      _duration = d;
    });

    advancedA.positionHandler = (p) => setState((){
      _duration = p;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('ویردی ئێواران',
          style: TextStyle(fontFamily: 'Rudaw_Regular.ttf',fontWeight: FontWeight.bold,fontSize: 23),
        )),
        backgroundColor: Colors.deepPurple[700],
      ),
      drawer: Drawer(

        child: ListView(
          children: <Widget>[

            DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                      Colors.deepPurple[800],
                      Colors.deepPurple[500]
                    ])
                ),
                child: Center(
                  child: Container(

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(90)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(0, 0),
                              blurRadius: 50,
                              spreadRadius: 0
                          ),
//               BoxShadow(
//                     color: Colors.white,
//                     offset: Offset(0, 0),
//                     blurRadius: 15,
//                     spreadRadius: 1
//               ),
                        ]
                    ),
                    child: Image(image: AssetImage('images/logo.png'),width: 130,height: 130,),
                  ),
                )),
            DrawerClass('ویردی بەیانیان', FontAwesomeIcons.prayingHands,(){
              advancedA.stop();
              Navigator.push(context, MaterialPageRoute(builder: (context) => baiany0()));
            }),
            DrawerClass('ویردی ئێواران ', FontAwesomeIcons.prayingHands,(){
              advancedA.stop();
              Navigator.push(context, MaterialPageRoute(builder: (context) => ewara0()));
            }),
            DrawerClass('        دەستپێک', FontAwesomeIcons.prayingHands,(){
              advancedA.stop();
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
            }),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/ewara4.jpg'),
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 15,),
                Material(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    elevation: 10,
                    child: GestureDetector(
                      onTap: (){
                        advancedA.stop();
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ewara3()));
                        setState(() {

                        });
                      },
                      child: Container(
                        padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                        decoration: BoxDecoration(
                          color: Colors.purple[800],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        width: 60,
                        height: 50,
                        child: Center(
                          child: Icon(
                            FontAwesomeIcons.angleLeft,
                            size: 35,
                            color: Colors.pink[50],
                          ),
                        ),
                      ),
                    )
                ),SizedBox(width: 8,),
                Material(
                    borderRadius: BorderRadius.horizontal(right: Radius.circular(0),left: Radius.circular(20)),
                    elevation: 10,
                    child: GestureDetector(
                      onTap: (){
                        advancedA.stop();
                      },
                      child: Container(
                        padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                        decoration: BoxDecoration(
                          color: Colors.purple[500],
                          borderRadius: BorderRadius.horizontal(right: Radius.circular(0),left: Radius.circular(20)),
                        ),
                        width: 100,
                        height: 50,
                        child: Center(
                          child: Icon(
                            FontAwesomeIcons.stop,
                            size: 35,
                            color: Colors.pink[50],
                          ),
                        ),
                      ),
                    )
                ),//SizedBox(width: 5,),
                Material(
                    borderRadius: BorderRadius.horizontal(right: Radius.circular(20),left: Radius.circular(0)),                    elevation: 10,
                    child: GestureDetector(
                      onTap: (){
                        audioCachea.play('ewara4.wav');
                      },
                      child: Container(
                        padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                        decoration: BoxDecoration(
                          color: Colors.purple[500],
                          borderRadius: BorderRadius.horizontal(right: Radius.circular(20),left: Radius.circular(0)),

                        ),
                        width: 100,
                        height: 50,
                        child: Center(
                          child: Icon(
                            FontAwesomeIcons.play,
                            size: 35,
                            color: Colors.pink[50],
                          ),
                        ),
                      ),
                    )
                ),SizedBox(width: 8,),
                Material(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    elevation: 15,
                    child: GestureDetector(
                      onTap: (){
                        advancedA.stop();
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ewara5()));
                      },
                      child: Container(
                        // padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                        decoration: BoxDecoration(
                          color: Colors.purple[800],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        width: 60,
                        height: 50,

                        child: Center(
                          child: Icon(
                            FontAwesomeIcons.angleRight,
                            size: 35,
                            color: Colors.pink[50],
                          ),
                        ),
                      ),
                    )
                ),SizedBox(width: 15,),
              ],
            ),
            SizedBox(height: 10,width: 10,),
          ],
        ),
      ),
    );
  }
}

class DrawerClass extends StatelessWidget {
  DrawerClass(this.text,this.icon,this.onTap);
  IconData icon;
  String text;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.deepPurple[700],
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.deepPurple[900]))
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 4,),
            Icon(
              icon , size: 30,color: Colors.deepPurple[700],
            ),SizedBox(width: 130,),
            Text(text,
              style: TextStyle(
                  fontFamily: 'Rudaw_Regular.ttf',
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Colors.deepPurple[700]
              ),
            ),
          ],
        ),
      ),
    );
  }
}

