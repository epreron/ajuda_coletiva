import 'package:flutter/material.dart';

class DialogPost extends StatelessWidget {
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
                  Container(
                    child: Row(
                       children: <Widget>[
                          Text("Preciso"),
                          Checkbox(
                            value: true, 
                            onChanged: null
                            )
                       ],
                     ),
                  ),
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
                onPressed: (){},
                )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
 }