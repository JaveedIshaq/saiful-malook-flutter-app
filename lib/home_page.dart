import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int likeCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            likeCount++;
          });
        },
        child: Icon(
          Icons.add,
          color: Color(0xFF000000),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Image(
                fit: BoxFit.fitWidth,
                image: AssetImage("assets/saif-ul-malook.png"),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Saif-ul-malook",
              style: TextStyle(fontSize: 30.0),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "Saiful Muluk is a mountainous lake located at the northern end of the Kaghan Valley, near the town of Naran in the Saiful Muluk National Park. The lake is a source of the Kunhar river. At an elevation of 3,224 m above sea level, the lake is located above the tree line, and is one of the highest lakes in Pakistan."),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text("Likes:"), Text("$likeCount")],
            )
          ],
        )),
      ),
    );
  }
}
