// ignore_for_file: prefer_const_constructors, unnecessary_import, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Awesome App",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change me";
  void initState() {
    super.initState();
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
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/spacelook.jpeg",
                    fit: BoxFit.cover,
                    // width: 100,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    myText,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: _nameController,
                      keyboardType: TextInputType.text,
                      // obscureText: true, // if password dalna ho
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter someting here",
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              // DrawerHeader(
              //   child: Text(
              //     "Hi, I am drawer",
              //     style: TextStyle(
              //       color: Colors.white,
              //     ),
              //   ),
              //   decoration: BoxDecoration(color: Colors.indigo),
              // ),

              // ---------------------

              UserAccountsDrawerHeader(
                accountName: Text("Vaibhav"),
                accountEmail: Text("vai07nov11@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1607990281513-2c110a25bd8c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1868&q=80"),

                  // child: Image.network(
                  //     "https://images.unsplash.com/photo-1607990281513-2c110a25bd8c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1868&q=80"),
                ),
              ),

              ListTile(
                leading: Icon(Icons.person),
                title: Text("Account"),
                subtitle: Text("Personal"),
                trailing: Icon(Icons.edit),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Email ID"),
                subtitle: Text("vs2062@srmist.edu.in"),
                trailing: Icon(Icons.send),
              )
            ],
          ),
        ),
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
