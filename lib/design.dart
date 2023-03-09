import 'package:flutter/material.dart';


class Design extends StatelessWidget {

  String pathImage = "assets/img/simon.jpg";
  String userName = "Jan3r";
  String Experience_details= "Expirince 1 year";

  Design(this.pathImage,this.userName,this.Experience_details);

  @override
  Widget build(BuildContext context) {

    final  photo = Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration:  BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );

    final name = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        userName,
        style: TextStyle(
          fontFamily: "Leto",
          fontSize: 17.0,
          fontWeight: FontWeight.bold
        ),
        textAlign: TextAlign.left,
      ),
    );
    
    final experience = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        Experience_details,
        style: TextStyle(
          fontFamily: "Leto",
          fontSize: 17.0,
        ),
        textAlign: TextAlign.left,
      ),
    );

    final mail =  Container(
      margin: EdgeInsets.only(
        left: 40.0
      ),
      child: Icon(
      Icons.email_rounded
      ) ,
    )
    ;

    final  userInfo =  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        name,
        experience
      ],
    );

    // TODO: implement build
    return Card(
      child:  Row(
          children: [
            photo,
            userInfo,
            mail
          ],
        ) ,
    )
    ;
  }
  

}