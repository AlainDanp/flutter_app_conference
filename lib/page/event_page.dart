import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {

  final events = [
    {
      "speaker": "Lior chamla",
      "date": "13h à 13h30",
      "subject": "GTA VI",
      "avatar": "GTA_VI"
    },
    {
      "speaker": "Damien Cavailles",
      "date": "17h à 19h30",
      "subject": "Jeux PC",
      "avatar": "jvs"
    },
    {
      "speaker": "Kevin P",
      "date": "20h à 21h30",
      "subject": "PS5 vs XBOX SERIE X",
      "avatar": "xboxvsps5"
    },
    {
      "speaker": "Juilien TV",
      "date": "22h à 23h30",
      "subject": "UBISOFT NEW GAME",
      "avatar": "ubi"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index){
          final event = events[index];
          final avatar = event['avatar'];
          final speaker = event['speaker'];
          final date = event['date'];
          final subject = event['subject'];

          return  Card(
            child: ListTile(
              leading: Image.asset("assets/images/$avatar.jpg"),
              title: Text('$speaker ($date)'),
              subtitle: Text('$subject'),
              trailing: Icon(Icons.more_vert),
            ),
          );
        },


      ),
    );
  }
}

