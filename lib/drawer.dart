import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
