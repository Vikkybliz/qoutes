import 'package:flutter/material.dart';
import 'qoute.dart';

void main() {
  runApp(MaterialApp(
    home: Qoutes()
  ));
}

class Qoutes extends StatefulWidget {

  @override
  _QoutesState createState() => _QoutesState();
}


class _QoutesState extends State<Qoutes> {
  List<Quote> qoute = [
    Quote(author: 'Matsumoto Rangiku', qoute:"The world isn't perfect. But it's there for us, doing the best it can....that's what makes it so damn beautiful."),
    Quote(author: 'Roy Mustang', qoute:"To know sorrow is not terrifying. What is terrifying is to know you can't go back to happiness you could have."),
    Quote(author: 'Kenshin Himura', qoute:"Whatever you lose, you'll find it again. But what you throw away you'll never get back.")
  ];
  Widget qouteCard(qout){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              qout.author,
              style: TextStyle(
                fontSize: 16,
                color: Colors.amber
              ),
            ),
            SizedBox(height: 6),
            Text(
              qout.qoute,
              style: TextStyle(
                fontSize: 18,
                color: Colors.amberAccent
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        title: Text('Anime Qoutes'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: qoute.map((qout) => qouteCard(qout)).toList(),
      ),
    );
  }
}
