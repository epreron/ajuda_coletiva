import 'package:ajuda_coletiva/models/ask_item_needer.dart';
import 'package:ajuda_coletiva/pages/needers_page.dart';
import 'package:flutter/material.dart';
import 'package:ajuda_coletiva/widgets/PostCard.dart';

class HomePage extends StatelessWidget {
  createPostDialog(BuildContext context) {
    TextEditingController itemController = TextEditingController();
    TextEditingController helpTypeController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();

    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("O que precisa "),
            content: Container(
              width: double.maxFinite,
              child: ListView(
                children: <Widget>[
                  TextFormField(
                    controller: helpTypeController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Tipo de ajuda",
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        //fontSize: 15,
                      ),
                    ),
                    style: TextStyle(
                        //fontSize: 15,
                        ),
                  ),
                  SizedBox(
                  //  height: 600,
                  //  width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Flexible(
                          child: TextFormField(
                            controller: itemController,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              labelText: "item",
                              labelStyle: TextStyle(
                                color: Colors.black38,
                                fontWeight: FontWeight.w400,
                                //fontSize: 15,
                              ),
                            ),
                            style: TextStyle(
                                //fontSize: 15,
                                ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                         ),
                        FloatingActionButton(
                          child: Icon(Icons.add),
                          onPressed: () {
                            //  addItemToList();
                            //print(products);
                          },
                        ),
                      ],
                    ),
                  ),
                  TextFormField(
                    controller: descriptionController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "descrição",
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        //fontSize: 15,
                      ),
                    ),
                    style: TextStyle(
                        //fontSize: 15,
                        ),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              MaterialButton(
                elevation: 5.0,
                child: Text("Subimit"),
                onPressed: null)
            ],
          );
        });
  }

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
                createPostDialog(context);
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
