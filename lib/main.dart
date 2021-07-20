import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaId(),
  ));
}

class NinjaId extends StatefulWidget {
  //const NinjaId({ Key? key }) : super(//key: key);

  @override
  _NinjaIdState createState() => _NinjaIdState();
}

class _NinjaIdState extends State<NinjaId> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('Ninja ID'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey[800],
          onPressed: () {
            setState(() {
              ninjaLevel++;
            });
          },
          child: Icon(
            Icons.add,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 30, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'data:image/jpeg;base64,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'),
                  radius: 50,
                ),
              ),
              Divider(
                height: 60,
                color: Colors.grey[800],
              ),
              Text(
                'NAME',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Naruto Uzumaki',
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Ninja Level',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '$ninjaLevel',
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28,
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Icon(
                    Icons.mail,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'uzumakinaruto@codingninja.ac.in',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 18,
                      letterSpacing: 1,
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
