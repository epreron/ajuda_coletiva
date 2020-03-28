import 'package:ajuda_coletiva/widgets/postType.dart';
import 'package:flutter/material.dart';
import 'package:ajuda_coletiva/widgets/PostCard.dart';

class HomePage extends StatelessWidget {

  final createPostDialog = new HelpType();

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
            postCard(),
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                createPostDialog.createHelptDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

//final products = productList;

Widget cardItem() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://s3.amazonaws.com/uifaces/faces/twitter/jeremiespoken/128.jpg"),
          ),
          title: Text("teste"),
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
                child: Text("product"),
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
