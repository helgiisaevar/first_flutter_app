import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: PeopleCart()
));

class PeopleCart extends StatefulWidget {
  @override
  _PeopleCartState createState() => _PeopleCartState();
}

class _PeopleCartState extends State<PeopleCart> {

  int peoplesvalue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        title: Text('Peoples cart'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            peoplesvalue +=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(backgroundImage: AssetImage('assets/helgi_flutter.png'),
              radius: 40.0,
              ),
            ),
            Divider(height: 90.0,
            color: Colors.grey[900],
            ),
          Text(
            'NAME',
            style: TextStyle(
            color: Colors.grey,
            letterSpacing: 2.0,
            )
          ),
          
          Text(
            'Helgi Saevar',
            style: TextStyle(
            color: Colors.amber[200],
            letterSpacing: 2.0,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            )
          ),
          SizedBox(height: 30.0),
          Text(
            'JOB POSITION',
            style: TextStyle(
            color: Colors.grey,
            letterSpacing: 2.0,
            )
          ),
          
          Text(
            '$peoplesvalue',
            style: TextStyle(
            color: Colors.amber[200],
            letterSpacing: 2.0,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            )
          ),
          SizedBox(height: 30.0),
          Row(
            children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.grey[400],
              ),
              SizedBox(width: 10.0),
              Text('helgiisaevar@gmail.com',
              style: TextStyle(
              color: Colors.grey[400],
              letterSpacing: 2.0,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              )),
            ],
          ),
        ],),
      )
    );
  }
}

