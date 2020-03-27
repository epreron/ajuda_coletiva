import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  getPost() async{
    http.Response response =   await http.get('http://127.0.0.1:3000/api/Post');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de ajuda"),
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView.builder(itemBuilder: null),
    );
  }
}
