import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'event_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/flutter.svg",
              color: Colors.blue,
            ),
            const Text("Danp Corp",
              style: TextStyle(
                  fontSize: 42 ,
                  fontFamily: 'Poppins'
              ),
            ),
            const Text("Conférence danp corps du jv",
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton.icon(
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(Colors.green)
              ),
              onPressed: (){
                Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (_, __, ___) => EventPage(),
                    )
                );
              },
              label: Text("Afficher le planing",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              icon: Icon(Icons.calendar_month),
            )
          ],
        )
    );
  }
}
