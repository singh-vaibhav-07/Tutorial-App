import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change me";
  // var url = "https://jsonplaceholder.typicode.com/photos";
  var data;
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
    var res = await http.get(url);
    data = jsonDecode(res.body);
    print(data);
    setState(() {});
    // print(res.body);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purpleAccent,
      child: Scaffold(
        backgroundColor: Colors.grey[350],
        appBar: AppBar(
          title: Text("Tutorial App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: data != null
              ? ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(data[index]["title"]),
                        subtitle: Text("ID: ${data[index]["id"]}"),
                        leading: Image.network(data[index]["url"]),
                      ),
                    );
                  },
                  itemCount: data.length,
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
        ),
        drawer: MyDrawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            myText = _nameController.text;
            setState(() {});
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
