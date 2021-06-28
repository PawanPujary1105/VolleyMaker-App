import 'package:flutter/material.dart';

class Teams extends StatefulWidget {

  List team1,team2,team3;
  bool teamSwitch;

  Teams(this.team1,this.team2,this.team3,this.teamSwitch);

  @override
  _TeamsState createState() => _TeamsState(team1,team2,team3,teamSwitch);
}

class _TeamsState extends State<Teams> {

  List team1,team2,team3;
  bool teamSwitch;

  _TeamsState(this.team1,this.team2,this.team3,this.teamSwitch);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyan,
        child: Column(
          children: [
            SizedBox(height: 40,),
            Row(children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Team 1:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
              ),
              SizedBox(width: 100,),
              Text("Team 2:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            ],),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: teamSwitch?team1.length+team3.length+1:team1.length,
                itemBuilder: (context,i){
                  return teamSwitch?i>team1.length-1? Row(
                        children: [
                          i==team1.length?SizedBox(height: 100,):SizedBox(),
                          i==team1.length?Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("Team 3:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
                          ): Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: SizedBox(child: Text(team3[i-team1.length-1],style: TextStyle(fontWeight: FontWeight.bold),),width: 180,),
                          ),
                        ],
                      ):Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: SizedBox(child: Text(team1[i],style: TextStyle(fontWeight: FontWeight.bold),),width: 180,),
                          ),
                          i!=team1.length-1||team1.length==team2.length?Text(team2[i],style: TextStyle(fontWeight: FontWeight.bold),):SizedBox(),
                        ],
                      ):Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: SizedBox(child: Text(team1[i],style: TextStyle(fontWeight: FontWeight.bold),),width: 180,),
                          ),
                          i!=team1.length-1||team1.length==team2.length?Text(team2[i],style: TextStyle(fontWeight: FontWeight.bold),):SizedBox(),
                        ],
                      );
              }),
          ],
        ),
      ),
    );
  }
}
