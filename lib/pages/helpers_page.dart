import 'package:flutter/material.dart';



class HelpersPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HelpersPage> {
  final List<String> products = <String>[];
  final List<String> productsQtd = <String>[];

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController foneNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController manyDaysController = TextEditingController();
  TextEditingController familyController = TextEditingController();

  TextEditingController productNameController = TextEditingController();
  TextEditingController productQtdController = TextEditingController();

  bool isCheck = true;

  void addItemToList(){
    setState(() {
      products.insert(0,productNameController.text);
      productsQtd.insert(0, productQtdController.text);
    });
  }
 
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          body: Container(
            padding: EdgeInsets.only(top: 10, left: 40, right: 40),
            color: Colors.white,
            child: ListView(
              children: <Widget>[
               SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: nameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Nome",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Telemovel",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
            SizedBox(
              height: 10,
            ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "endereço",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
            SizedBox(
              height: 10,
            ),

            SizedBox(
              height: 10,
            ),
           Container( 
             child:Row(
              children:<Widget>[
                Text("Podes realizar entrega"),
                Checkbox(
                  value: isCheck,
                  checkColor: Colors.green,  // color of tick Mark
                  activeColor: Colors.black,
                  onChanged: (bool value) {
                    setState(() {
                      isCheck = value;
                    });
                  }),
                ],
             ),
           ),
              Text("O que podes doar "),
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
                        controller: productNameController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                        labelText: "Produto",
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
                        controller: productQtdController,
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
                    addItemToList();
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
           
            Container(
             // child: SizedBox.expand(
                child: Column(
                //  mainAxisAlignment: MainAxisAlignment.center,                     
                  children: <Widget>[
                Container(
                  height: 200,
                  alignment: Alignment.center,
                  child: ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text('${productsQtd[index]} - ${products[index]}'),
                      );
                    },
                   ),
                  ),
                 ],
                ),
   //           ),
            ),

            SizedBox(
              height: 10,
            ),

            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFFF58524),
                    Color(0XFFF92B7F),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Text(
                    "Registrar ajuda",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  "Cancelar",
                  textAlign: TextAlign.center,
                ),
                onPressed: () => Navigator.pop(context, false),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

