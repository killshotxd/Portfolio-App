import 'package:portfolio/drawer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
  ));
}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("My Portfolio"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              child: Column(
                children: [
                  Image.asset("assets/new.jpg"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Mohd Hassan The",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Web Developer",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 600,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Technologies",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    child: Text(
                                        "I'm familiar with HTML5, CSS3, Git, JavaScript...",
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                  ),
                                ),
                              ]),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                              width: 600,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Projects" "",
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                          child: Text(
                                              "I like to showcase my work and thus, you can see my projects hosted online",
                                              style: TextStyle(
                                                fontSize: 20,
                                              )),
                                        ),
                                      ),
                                      // ignore: deprecated_member_use
                                      RaisedButton(
                                        onPressed: _launchURLApp,
                                        child: Text('View My Projects'),
                                        textColor: Colors.black,
                                        padding: const EdgeInsets.all(5.0),
                                      )
                                    ]),
                              ))))
                ],
              ),
            ),
          ),
        ),
        drawer: MyDrawer());
  }
}

_launchURLApp() async {
  const url = 'https://hassanport.netlify.app/';
  if (await canLaunch(url)) {
    await launch(url, forceSafariVC: true, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}
