import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyNinja(),
  ));
}

class MyNinja extends StatefulWidget {

  @override
  State<MyNinja> createState() => _MyNinjaState();
}

class _MyNinjaState extends State<MyNinja> {

  int ninjalevel = 0;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: Text('Ninja ID Card'),
          centerTitle: true,
          elevation: 0.0,
        ),
          floatingActionButton : FloatingActionButton(
            onPressed: (){
              setState((){
                ninjalevel += 1;
              });
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.grey[800],
          ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage('Assets/download.jpg'),
                ),
              ),
              Divider(
                height: 80.0,
                color: Colors.grey[500],
              ),
              Text(
              'Name ',
              style: TextStyle(
                color: Colors.grey[600],
                letterSpacing: 2.0,
              ),
            ),
              SizedBox(height: 20),
              Text(
                'Abeera Mahfooz ',
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Level',
                style: TextStyle(
                  color: Colors.grey[600],
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 20),
              Text(
                '$ninjalevel',
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[600],
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Please Contact me on the provided Email',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              )
          ],
          ),
        ),
      );
    }
}



