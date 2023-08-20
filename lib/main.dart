import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: tod(),
  ));
}

class tod extends StatelessWidget {
  const tod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Truth or Dare'),
      ),
      body: td(),
    );
  }
}

class td extends StatefulWidget {
  const td({super.key});

  @override
  State<td> createState() => _tdState();
}

class _tdState extends State<td> {
  int choice = 3;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        // choice = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('images/t.jpeg'))),
            SizedBox(
              width: 5,
            ),
            Expanded(child: Image.asset('images/dare.jpg'))
          ],
        ),
        Expanded(child: Image.asset('images/image$choice.png'))
      ],
    );
  }
}
