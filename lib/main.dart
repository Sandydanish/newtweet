import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: NewTweet()));
}

class NewTweet extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Text("New Tweet"),
      ),
      body: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: false,
          children: <Widget>[
            Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomLeft,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3.5,
                  ),
                  Positioned(
                    top: 100,
                    left: 5,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage("images/back1.jpg")),
                          border: Border.all(color: Colors.black, width: 5)),
                    ),
                  ),
                  Positioned(
                      top: 120,
                      left: 110,
                      child: Text(
                        "IdName",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      )),
                  Positioned(
                    top: 20,
                    right: 10,
                    height: 40,
                    width: 100,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.blue, width: 2)),
                      child: Center(
                          child: Text(
                        "New Tweet",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ]),
            Expanded(
              child: Container(
                  alignment: Alignment.center,
                  margin:
                      const EdgeInsets.only(top: 15.0, left: 10.0, right: 20.0),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  )),
            ),
          ]),
    );
  }
}
