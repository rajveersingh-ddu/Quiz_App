import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_screen.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/quiz.png'),
            SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                  onPressed:() {

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const Quiz_Screen()));
                  },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
                side: const BorderSide(color: Colors.white,width: 2),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              ), child: const Text('Start',style: TextStyle(fontSize:35,color: Colors.black,fontWeight: FontWeight.bold),)
              ),
            )
          ],
        ),
        
      ),
    );
  }
}
