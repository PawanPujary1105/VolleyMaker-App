import 'package:flutter/material.dart';
import 'dart:math';

import 'package:volley_maker/teams.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<bool> sel=[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false];

  List players=["Dhanush","Girish","Rajesh M","Putta","Mahesh","Sacchu","Rajesh Shetty","Satish","Jeethu","Rathu","Babool","Santhosh","Gundu","Roni","Rithesh","Rajesh","Sandeep","Munna","Akshay Acharya","Pawan","Anish","Adi","Akshay","Sumanth","Manthu","Sunil","Manoj","Yajnesh","Sudha"];
  List availPlayers1=List();
  List availPlayers2=List();
  List availPlayers3=List();
  List availPlayers4=List();
  List team1=List();
  List team2=List();
  List team3=List();

  bool teamSwitch=false;

  selectedPlayers(context){
    setState(() {
      int rand;
      if(team1.length>0){
        team1.removeRange(0, team1.length);
        team2.removeRange(0, team2.length);
        team3.removeRange(0, team3.length);
      }
      for(int i=0;i<players.length;i++){
        if(sel[i]==true){
          if(i<9){
            availPlayers1.add(players[i]);
          }
          else if(i<13){
            availPlayers2.add(players[i]);
          }
          else if(i<23){
            availPlayers3.add(players[i]);
          }
          else{
            availPlayers4.add(players[i]);
          }
        }
      }
      int len=availPlayers1.length;
      for(int i=0;i<len;i++){
        if(teamSwitch){
          if(team1.length==team3.length){
            rand=Random().nextInt(availPlayers1.length);
            team1.add(availPlayers1[rand]);
            availPlayers1.removeAt(rand);
          }
          else if(team1.length==team2.length){
            rand=Random().nextInt(availPlayers1.length);
            team3.add(availPlayers1[rand]);
            availPlayers1.removeAt(rand);
          }
          else{
            rand=Random().nextInt(availPlayers1.length);
            team2.add(availPlayers1[rand]);
            availPlayers1.removeAt(rand);
          }
        }
        else{
          if(team1.length==team2.length){
            rand=Random().nextInt(availPlayers1.length);
            team1.add(availPlayers1[rand]);
            availPlayers1.removeAt(rand);
          }
          else{
            rand=Random().nextInt(availPlayers1.length);
            team2.add(availPlayers1[rand]);
            availPlayers1.removeAt(rand);
          }
        }
      }
      len=availPlayers2.length;
      for(int i=0;i<len;i++){
        if(teamSwitch){
          if(team1.length==team3.length){
            rand=Random().nextInt(availPlayers2.length);
            team1.add(availPlayers2[rand]);
            availPlayers2.removeAt(rand);
          }
          else if(team1.length==team2.length){
            rand=Random().nextInt(availPlayers2.length);
            team3.add(availPlayers2[rand]);
            availPlayers2.removeAt(rand);
          }
          else{
            rand=Random().nextInt(availPlayers2.length);
            team2.add(availPlayers2[rand]);
            availPlayers2.removeAt(rand);
          }
        }
        else{
          if(team1.length==team2.length){
            rand=Random().nextInt(availPlayers2.length);
            team1.add(availPlayers2[rand]);
            availPlayers2.removeAt(rand);
          }
          else{
            rand=Random().nextInt(availPlayers2.length);
            team2.add(availPlayers2[rand]);
            availPlayers2.removeAt(rand);
          }
        }
      }
      len=availPlayers3.length;
      for(int i=0;i<len;i++){
        if(teamSwitch){
          if(team1.length==team3.length){
            rand=Random().nextInt(availPlayers3.length);
            team1.add(availPlayers3[rand]);
            availPlayers3.removeAt(rand);
          }
          else if(team1.length==team2.length){
            rand=Random().nextInt(availPlayers3.length);
            team3.add(availPlayers3[rand]);
            availPlayers3.removeAt(rand);
          }
          else{
            rand=Random().nextInt(availPlayers3.length);
            team2.add(availPlayers3[rand]);
            availPlayers3.removeAt(rand);
          }
        }
        else{
          if(team1.length==team2.length){
            rand=Random().nextInt(availPlayers3.length);
            team1.add(availPlayers3[rand]);
            availPlayers3.removeAt(rand);
          }
          else{
            rand=Random().nextInt(availPlayers3.length);
            team2.add(availPlayers3[rand]);
            availPlayers3.removeAt(rand);
          }
        }
      }
      len=availPlayers4.length;
      for(int i=0;i<len;i++){
        if(teamSwitch){
          if(team1.length==team3.length){
            rand=Random().nextInt(availPlayers4.length);
            team1.add(availPlayers4[rand]);
            availPlayers4.removeAt(rand);
          }
          else if(team1.length==team2.length){
            rand=Random().nextInt(availPlayers4.length);
            team3.add(availPlayers4[rand]);
            availPlayers4.removeAt(rand);
          }
          else{
            rand=Random().nextInt(availPlayers4.length);
            team2.add(availPlayers4[rand]);
            availPlayers4.removeAt(rand);
          }
        }
        else{
          if(team1.length==team2.length){
            rand=Random().nextInt(availPlayers4.length);
            team1.add(availPlayers4[rand]);
            availPlayers4.removeAt(rand);
          }
          else{
            rand=Random().nextInt(availPlayers4.length);
            team2.add(availPlayers4[rand]);
            availPlayers4.removeAt(rand);
          }
        }
      }
      print(team1);
      print(team2);
      print(team3);
      rand=Random().nextInt(team1.length);
      team1[rand]=team1[rand]+" (c)";
      rand=Random().nextInt(team2.length);
      team2[rand]=team2[rand]+" (c)";
      if(teamSwitch){
        rand=Random().nextInt(team3.length);
        team3[rand]=team3[rand]+" (c)";
      }
    });
    Navigator.push(context, MaterialPageRoute(
        builder: (context)=>Teams(team1, team2,team3,teamSwitch)));
  }

  teamsDialog(BuildContext context){
    return showDialog(
      context: context,
      builder: (context){
        return SimpleDialog(
          title: Text("How many Teams?"),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("2"),
                Switch(value: teamSwitch, onChanged: (val){
                  setState(() {
                    teamSwitch=val;
                  });
                }),
                Text("3"),
              ],
            ),
            Center(
              child: RaisedButton(
                child: Text("Done"),
                  onPressed: (){
                Navigator.pop(context);
                selectedPlayers(context);
              }),
            ),
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.cyan,
          child: Column(
            children: [
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Select available players: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              ),
              SizedBox(height: 10,),
              Expanded(
                child: ListView.builder(
                  itemCount: ((players.length+1)/2).toInt(),
                    itemBuilder: (context,i){
                    int j=2*i;
                      return Row(
                          children: [
                            Checkbox(activeColor:Colors.cyanAccent,checkColor:Colors.black,value: sel[j], onChanged: (val){
                              setState(() {
                                sel[j]=!sel[j];
                              });
                            }),
                            SizedBox(child: Text(players[j],style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),width: 125,),
                            j!=players.length-1?Checkbox(activeColor:Colors.cyanAccent,checkColor:Colors.black,value: sel[j+1], onChanged: (val){
                              setState(() {
                                sel[j+1]=!sel[j+1];
                              });
                            }):SizedBox(),
                            j!=players.length-1?Text(players[j+1],style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),):SizedBox(),
                          ],
                        );
                    }
                ),
              ),
              Center(
                child: Builder(
                  builder: (context)=>Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: RaisedButton(
                      elevation: 5,
                      color: Colors.cyanAccent,
                        child: Text("Done"),
                        onPressed: (){
                        teamsDialog(context);
                        },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
