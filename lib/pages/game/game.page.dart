import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guess the Number'),
      ),
      body: Center( //กด ALT+Enter เลือก wrap with center
        child: Column(//บนลงล่าง Row ซ้ายไปขวา
          mainAxisAlignment: MainAxisAlignment.center,//เเนวตั้ง
          children: [
            Icon(Icons.person,size: 200,color: Colors.blueAccent,),
            Text('Guess the number between 1 and 100'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),//ระยะห่างระหว่างสิ่งของ
                  child: ElevatedButton(onPressed: () {}, child: Text('Guess')),
                ),
                ElevatedButton(onPressed: () {}, child: Text('Guess'))
              ],
            ),

          ],
        ),
      ),
    );
  }
}
