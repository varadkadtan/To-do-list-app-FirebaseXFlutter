import 'package:crudapp/screens/fetch_data.dart';
import 'package:crudapp/screens/insert_data.dart';
import 'package:crudapp/screens/login_page.dart';
import 'package:crudapp/screens/signin.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyCRUD'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Your TO-DOs',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const Image(
              width: 300,
              height: 300,
              image: NetworkImage(
                  'https://drive.google.com/uc?export=view&id=198QMrrelqq7ON9y4PAS17VYjRq_eYY-G'),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'By VARAD KADTAN',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InsertData()));
              },
              child: const Text('Enter Task'),
              color: Colors.blueAccent,
              textColor: Colors.white,
              minWidth: 300,
              height: 40,
            ),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FetchData()));
              },
              child: const Text('View To-Do List'),
              color: Colors.blueAccent,
              textColor: Colors.white,
              minWidth: 300,
              height: 40,
            ),
            GestureDetector(
                child: Text(
                  "LogOut",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => SignInScreen()));
                })
          ],
        ),
      ),
    );
  }
}
