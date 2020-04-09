import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: new Signup(),
  ));
}

class Signup extends StatefulWidget {
  Signup({Key key, this.title}) : super(key: key);
    final String title;

  @override
  SignupPage createState() => new SignupPage();
}

class SignupPage extends State<Signup> {
  // List<String> _ccodes = <String>['', '+65', '+91', '+60', '+61'];
  // String _ccode = '';

  @override
  Widget build(BuildContext context) {
    final name = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      initialValue: 'Morgan Jordan',
      style: TextStyle(
        color: Colors.black
      ),
      decoration: InputDecoration(
        labelText: 'Name',
        focusColor: Colors.grey[800],
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'tq@gmail.com',
      
      decoration: InputDecoration(
        labelText: 'Email',
        focusColor: Colors.grey[600],
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );

    final password = TextFormField(
      keyboardType: TextInputType.multiline,
      autofocus: false,
      maxLines: null,
      style: TextStyle(
        color: Colors.black
      ),
      initialValue: 'His daugther is called Brendan',
      decoration: InputDecoration(
        hoverColor: Colors.grey[200],
        labelText: 'About Person',
        contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 10.0, 60.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );

    final passwordConfirmation = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      initialValue: 'What connects you?',
      decoration: InputDecoration(
        labelText: 'Enter tags here',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );

    final phonenumber = TextFormField(
          keyboardType: TextInputType.phone,
          autofocus: false,
          initialValue: '8645418',
          decoration: InputDecoration(
            labelText: 'Phone number',
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        );

    final loginButton = Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
          borderRadius: BorderRadius.circular(30.0),
          shadowColor: Colors.lightBlueAccent.shade100,
          elevation: 5.0,
          child: MaterialButton(
            minWidth: 200.0,
            height: 42.0,
            onPressed: () {
              print("Signup button clicked");
            },
            color: Colors.lightBlueAccent,
            child: Text(
              'Sign Up',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        ));

    // final countryCode = DropdownButton<String>(
    //     value: _ccode,
    //     isDense: true,
    //     items: _ccodes.map((String value) {
    //       return new DropdownMenuItem<String>(
    //         value: value,
    //         child: new Text(value),
    //       );
    //     }).toList(),
    //     onChanged: (String newValue) {
    //       setState(() {
    //         _ccode = newValue;
    //       });
    //     });

    

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: ListView(
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          shrinkWrap: true,
          children: <Widget>[
            name,
            SizedBox(height: 18.0),
            email,
            SizedBox(height: 18.0),
            password,
            SizedBox(height: 18.0),
            passwordConfirmation,
            SizedBox(height: 18.0),
            phonenumber,
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     //countryCode,
            //     new Flexible(child: phonenumber),
            //   ],
            // ),
            SizedBox(height: 18.0),
            loginButton,
            SizedBox(height: 38.0),
          ],
        )));
  }
}