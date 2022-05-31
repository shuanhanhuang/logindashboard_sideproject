import 'package:flutter/material.dart';
import 'package:logindashboard_sideproject/models/TeamsModel.dart';
import 'package:logindashboard_sideproject/screens/detailScreen.dart';

class Popularteams extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: teams.length,
        itemBuilder: (context, index){
          TeamsModel teamsModel = teams[index];
          return TeamItem(teamsModel,context);
        },
      ),
    );
  }

  Widget TeamItem(TeamsModel teamsModel,BuildContext context){

    return Container(


      margin: EdgeInsets.only(right: 20),
      width: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFF082938)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,

        children: <Widget>[
          Expanded(
            child: Container(
              width: 220,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(teamsModel.img),
                      fit: BoxFit.cover
                  ),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(height: 100),
                  RawMaterialButton(
                      onPressed: () {Navigator.push(
                      context, MaterialPageRoute(builder: (context) => new detailScreen(teamsModel.desc,teamsModel.title,teamsModel.img, teamsModel.describe, ))
                      );
                    }
                  )

                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(teamsModel.title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    )),
                SizedBox(height: 5),
                Text(teamsModel.desc,style: TextStyle(
                    color: Colors.white,
                    fontSize: 14
                )),
                SizedBox(height: 20),
                Text("Team information", style: TextStyle(
                    color: Colors.white,
                    fontSize: 12
                )),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    TeamsItemIcon(Icons.add_reaction_outlined , "1456"),
                    SizedBox(width: 7),
                    TeamsItemIcon(Icons.thumb_up_outlined , "1768"),
                    SizedBox(width: 7),
                    TeamsItemIcon(Icons.people_alt_outlined , "415"),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );

  }

  Widget TeamsItemIcon(IconData iconData, String text){
    return Row(
      children: <Widget>[
        Icon(iconData, color: Colors.white),
        SizedBox(width: 2),
        Text(text, style: TextStyle(color: Colors.white))
      ],
    );
  }

}