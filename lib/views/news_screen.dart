import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: const <Widget>[
        Card(
            child: Row(
          children: [
            Placeholder(
              fallbackHeight: 90,
              fallbackWidth: 90,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Questo è il titolo",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text("Questo è il contenuto", style: TextStyle(fontSize: 15))
              ],
            )
          ],
        )),
        Card(
            child: Row(
          children: [
            Placeholder(
              fallbackHeight: 90,
              fallbackWidth: 90,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Questo è il titolo",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text("Questo è il contenuto", style: TextStyle(fontSize: 15))
              ],
            )
          ],
        )),
      ],
    );
  }
}
