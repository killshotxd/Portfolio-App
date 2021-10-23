import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: const EdgeInsets.all(0), children: [
        UserAccountsDrawerHeader(
            accountName: Text("Mohd Hassan"),
            accountEmail: Text("hassanansari211@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://media-exp1.licdn.com/dms/image/C5603AQFVN7v4XU-hRw/profile-displayphoto-shrink_400_400/0/1633790742334?e=1640217600&v=beta&t=RPmSmVUIfZ7vOeoolVsYBZ_Rdyz9zkwBTdSSdfwG2mQ"),
            )),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Mohd Hassan"),
          subtitle: Text("Web Developer"),
        ),
        ListTile(
          leading: Icon(Icons.email),
          title: Text("hassanansari211@gmail.com"),
          subtitle: Text("Contact Me"),
          onTap: () {},
        ),
      ]),
    );
  }
}
