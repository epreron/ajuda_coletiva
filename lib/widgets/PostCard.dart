import 'package:ajuda_coletiva/models/ask_item_needer.dart';
import 'package:ajuda_coletiva/pages/needers_page.dart';
import 'package:flutter/material.dart';


Widget postCard() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          title: Text("Preciso de ajuda !!"),
          subtitle: Text("09/05/2019 18:37"),
          trailing: Icon(Icons.more_vert),
        ),
        Text("Itens que preciasas"),
            Container(
              height: 100,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(

              borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),

              child: SizedBox.expand(
                child: Row(
                //  mainAxisAlignment: MainAxisAlignment.center,                     
                  children: <Widget>[
                    new Flexible(
                      child: TextFormField(
                       // controller: productNameController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                        labelText: "Nome",
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
                  
                    new Flexible(
                      child: TextFormField(
                        //controller: productQtdController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                        labelText: "Quantidade",
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
                FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () {
                    //addItemToList();
                    //print(products);
                  },
          
                    ),
                  ],
                  
                 ),
                ),
              ),
            
            SizedBox(
              height: 10,
            ),
           
            
          ],
         ),
        );
       }