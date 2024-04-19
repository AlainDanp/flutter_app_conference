import 'package:flutter/material.dart';
import 'package:untitled/page/Home_page.dart';
import 'package:untitled/page/add_event_page.dart';
import 'package:untitled/page/event_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
  
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;

  setCurrentIndex(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("Danp Corp")
        ),
        body: [
          HomePage(),
          EventPage(),
          AddEventPage(),
        ][_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setCurrentIndex(index),
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          iconSize: 33,
          elevation: 20,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Acceuil'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: 'planning'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: 'Ajout'
            )
          ],
        ),
      ),
    );
  }

}
