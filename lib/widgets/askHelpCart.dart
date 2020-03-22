import 'package:flutter/material.dart';
import 'package:ajuda_coletiva/pages/needers_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//
      body: Container(
        color: Color(0xFFF2F3F6),
        child: ListView(
          children: <Widget>[
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
          ],
        ),
      ),
    );
  }
}

final products = productList;

Widget cardItem() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://baltaio.blob.core.windows.net/student-images/1edd5c50-bae9-11e8-8eb4-39de303632c1.jpg"),
          ),
          title: Text("Elias Santos - 25 anos"),
          subtitle: Text("09/05/2019 18:37"),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          height: 80,
          padding: EdgeInsets.all(10),
          child: Text(
              "estou sem trabalho e preciso de ajuda para comer nos proximos dias. "),
        ),
        SizedBox( 
        child: Row(
          children: <Widget>[
            Container(
              height: 80,
              alignment: Alignment.topCenter,
              child: Text(
                  products),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Icon(Icons.face),
                    onPressed: () {},
                  ),
                  
                ],
              ),
            ),
          ],
         ),
        ),
      ],
    ),
  );
}
