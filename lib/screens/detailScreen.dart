import 'package:flutter/material.dart';
import 'package:logindashboard_sideproject/models/TeamsModel.dart';
class detailScreen extends StatelessWidget {
  String desc;
  String title;
  String img;
  String describe;

  detailScreen(this.title, this.img,this.desc,this.describe);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(img),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(desc),
                          ),
                      ),
                  ),
              ),
                  Container(
                    height: 260,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                  Text(
                                    '球隊名稱: $img',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                Text(
                                '球隊口號: $title',//'球隊口號: $
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  '球隊介紹: $describe',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                              ]
                            )
                          )
                      ]
                    )
                )
            ]

          )
        )
    );

  }
}
