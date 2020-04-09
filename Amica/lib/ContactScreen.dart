import 'package:flutter/material.dart';
import 'package:Amica/Signup.dart';


// import 'package:Amica/DataController.dart';
// import 'package:flutter/material.dart';
// import 'package:Amica/Contact.dart';
// import 'package:intl/intl.dart';


class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {

  @override
  Widget build(BuildContext context) {
      final name = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      initialValue: 'Techie Quickie',
      decoration: InputDecoration(
        hintText: 'Name',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        title: Text('Each Person'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Signup()),
            );
            print("Added a new contact!");
            Signup();
          },
          label: Text('add'),
          icon: Icon(Icons.add),
          backgroundColor: Colors.blueAccent,
          ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage('assets/images/person1.jpg'),
              ),
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new Text(
                  'Name',
                  style: TextStyle(
                    color: Colors.grey[850],
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 30.0),
                new Text(
                  'Hometown',
                  style: TextStyle(
                    color: Colors.grey[850],
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'hekgu',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Beijing, China',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new Text(
                  'Days in row',
                  style: TextStyle(
                    color: Colors.grey[850],
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10.0),
                SizedBox(height: 30.0),
                new Text(
                  'Phone number',
                  style: TextStyle(
                    color: Colors.grey[850],
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'blaa',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                  ),
                ),
                Text(
                  '864 5418',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'thordur@ru.is',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            name,
          ],
        ),
        
      ),
    );
  }
}
