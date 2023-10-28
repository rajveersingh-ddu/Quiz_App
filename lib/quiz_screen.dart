import 'dart:core';

import 'package:flutter/material.dart';
import 'package:quiz_app/start_Screen.dart';

class Quiz_Screen extends StatefulWidget {
  const Quiz_Screen({super.key});

  @override
  State<Quiz_Screen> createState() => _Quiz_ScreenState();
}

class _Quiz_ScreenState extends State<Quiz_Screen> {
  var questionindex = 0;
  List questions = [
    {
      "num": '1',
      "question": "What is Flutter?",
      "options": [
        "A programming language",
        "A UI framework",
        "A database system",
        "A game engine"
      ],
      "correctAnswer": '1',
    },
    {
      "num": '2',
      "question":
          "Which programming language is primarily used in Flutter development?",
      "options": ["Java", "C#", "Kotlin", "Dart"],
      "correctAnswer": '3',
    },
    {
      "num": '3',
      "question": "What is the purpose of the Flutter widget tree?",
      "options": [
        "To organize file structure",
        "To display the app's UI",
        "To manage database connections",
        "To define app permissions"
      ],
      "correctAnswer": '1',
    },
    {
      "num": '4',
      "question":
          "Which Flutter command is used for applying changes to the app without restarting it?",
      "options": [
        "flutter apply",
        "flutter run",
        "flutter refresh",
        "flutter hot reload"
      ],
      "correctAnswer": '3',
    },
    {
      "num": '5',
      "question":
          "What is the primary function of the 'main()' function in a Flutter app?",
      "options": [
        "Initializing the app's database",
        "Handling user input",
        "Starting the app's UI",
        "Setting up the app's routing"
      ],
      "correctAnswer": '2',
    },
    {
      "num": '6',
      "question": "How is state management typically handled in a Flutter app?",
      "options": [
        "Using global variables",
        "With stateless widgets",
        "Through external libraries like Provider or Bloc",
        "It's not necessary in Flutter"
      ],
      "correctAnswer": '2',
    },
    {
      "num": '7',
      "question":
          "What is async and await used for in Dart when working with Flutter?",
      "options": [
        "Defining variables",
        "Handling exceptions",
        "Managing asynchronous operations",
        "Creating animations"
      ],
      "correctAnswer": '2',
    },
    {
      "num": '8',
      "question":
          "Which keyword is used to specify that a variable may be null in Dart?",
      "options": ["non-null", "optional", "nullable", "late"],
      "correctAnswer": '2',
    },
    {
      "num": '9',
      "question": "How do you manage dependencies in a Flutter project?",
      "options": [
        "Using Flutter's built-in dependency manager",
        "Manually copying dependencies into the project",
        "Using the 'import' keyword",
        "There's no dependency management in Flutter"
      ],
      "correctAnswer": '0',
    },
    {
      "num": '10',
      "question": "What is null safety in Dart?",
      "options": [
        "A safety protocol in the Dart language",
        "A type system that prevents null reference errors",
        "A testing framework for Dart apps",
        "A security feature in Flutter apps"
      ],
      "correctAnswer": '1',
    },
  ];
  int res = 0;
  int score = 0;
  var opt;

  void _onpress(int x) {
    setState(() {
      res = (x + 1);
    });
    String ans = res.toString();

    if (ans == questions[questionindex]['correctAnswer']) {
      setState(() {
        score = score + 1;
      });
    } else {

      setState(() {
        score = score - 1;
      });
    }
  }

  var next = 'Next';
  var result;
  void incrementNumber() {
    // Use setState to trigger a rebuild and update the UI
    setState(() {
      questionindex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Center(
                        child: Text(
                      questions[questionindex]['num'],
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                        child: Text(
                      questions[questionindex]['question'],
                      style: TextStyle(
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    )),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 350,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _onpress(0);
                    },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.amber),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Text("1")),
                        const SizedBox(
                          width: 50,
                        ),
                        Expanded(
                          child: Text(
                            questions[questionindex]['options'][0],
                            style: const TextStyle(color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _onpress(1);
                    },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.amber),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Text("2")),
                        const SizedBox(
                          width: 50,
                        ),
                        Expanded(
                          child: Text(
                            questions[questionindex]['options'][1],
                            style: const TextStyle(color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    child: ElevatedButton(
                      onPressed: () {
                        _onpress(2);
                      },
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.amber),
                      ),
                      child: Row(
                        children: [
                          const CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Text("3")),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              questions[questionindex]['options'][2],
                              style: const TextStyle(color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _onpress(3);
                    },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.amber),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                            child: Text("4"), backgroundColor: Colors.black),
                        const SizedBox(
                          width: 50,
                        ),
                        Expanded(
                          child: Text(
                            questions[questionindex]['options'][3],
                            style: const TextStyle(color: Colors.black),
                            softWrap: true,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  if (questionindex < 9) {
                    incrementNumber();
                    if (questionindex < 9) {
                      setState(() {
                        next = 'Next';
                      });
                    } else {
                      next = 'Result';
                    }
                  } else {
                    result = score.toString();
                    print(result.runtimeType);
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>new  Result_Screen(score:result)));
                  }
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.amber)),
                child: Text(
                  next,
                  style: const TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
class Result_Screen extends StatefulWidget {

  const Result_Screen({Key? key, required this.score}) : super(key: key);
  final score;

  @override
  State<Result_Screen> createState() => _Result_ScreenState();
}

class _Result_ScreenState extends State<Result_Screen> {
  var res='hello';





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(

            color: Colors.black,
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 450,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CircleAvatar(backgroundImage: AssetImage('assets/trophy.jpg'),radius: 100,),
                    const Text("Congrats!",style:
                    TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold,),),
                    const Text("Quiz Completed Successfully",style:
                    TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold,),),
                    const Text("You attempt 10 questions and you Scored ",style:
                    TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),

                    CircleAvatar(backgroundColor: Colors.amber,

                        child: Text('${widget.score}',style: const TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),




                  ],
                ),
              ),
              const SizedBox(height:50),
              SizedBox(width: 200,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  Start()));
                },
                  style: const ButtonStyle(
                      backgroundColor:MaterialStatePropertyAll(Colors.amber) ),child:  const Text("New Game",style:
                TextStyle(color: Colors.black,fontSize: 25),),),
              )
            ],
          ),

        ],
      ),
    );
  }
}

