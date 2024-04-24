import 'package:flutter/material.dart';

void main() {
  runApp(CreeperApp());
}

class CreeperApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Creeper from Minecraft',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: CreeperPage(),
    );
  }
}

class CreeperPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Creeper from Minecraft'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CreeperHead(),
            SizedBox(height: 20.0),
            CreeperCard(),
          ],
        ),
      ),
    );
  }
}

class CreeperHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.green,
      child: Stack(
        children: [
          Positioned(
            left: 50,
            top: 50,
            child: CreeperSquareEye(),
          ),
          Positioned(
            left: 100,
            top: 50,
            child: CreeperSquareEye(),
          ),
          Positioned(
            left: 50,
            top: 120,
            width: 100,
            height: 50,
            child: CreeperMouth(),
          ),
          Positioned(
            left: 90,
            top: 95,
            child: CreeperNose(),
          ),
        ],
      ),
    );
  }
}

class CreeperSquareEye extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      color: Colors.black,
    );
  }
}

class CreeperMouth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
    );
  }
}

class CreeperNose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      color: Colors.brown,
    );
  }
}

class CreeperCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Creeper',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Creeper - враждебный моб из Minecraft, '
                  'имеющий взрывоопасные свойства.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}









