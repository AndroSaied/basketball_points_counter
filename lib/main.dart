import 'package:flutter/material.dart';

void main(){
  runApp(const BasketballPoints());
}

class BasketballPoints extends StatefulWidget {
  const BasketballPoints({super.key});

  @override
  State<BasketballPoints> createState() => _BasketballPointsState();
}

class _BasketballPointsState extends State<BasketballPoints> {

  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Points Counter'),
          backgroundColor: const Color(0xfffa9636),
        ),
        body: Column(
          children: [
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text("Team A", style: TextStyle(fontSize: 32),),
                    Text('$teamAPoints', style: const TextStyle(fontSize: 150),),
                    MaterialButton(onPressed: () {
                      setState(() {
                        teamAPoints++;
                      });
                    },
                    color: Colors.orange,
                    child: const Text('Add 1 Point'),
                    ),
                    MaterialButton(onPressed: () {
                      setState(() {
                        teamAPoints += 2;
                      });
                    },
                    color: Colors.orange,
                    child: const Text('Add 2 Point'),
                    ),
                    MaterialButton(onPressed: () {
                      setState(() {
                        teamAPoints += 3;
                      });
                    },
                    color: Colors.orange,
                    child: const Text('Add 3 Point'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 340,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    const Text("Team B", style: TextStyle(fontSize: 32),),
                    Text("$teamBPoints", style: const TextStyle(fontSize: 150),),
                    MaterialButton(onPressed: () {
                      setState(() {
                        teamBPoints++;
                      });
                    },
                    color: Colors.orange,
                    child: const Text('Add 1 Point'),
                    ),
                    MaterialButton(onPressed: () {
                      setState(() {
                        teamBPoints += 2;
                      });
                    },
                    color: Colors.orange,
                    child: const Text('Add 2 Point'),
                    ),
                    MaterialButton(onPressed: () {
                      setState(() {
                        teamBPoints += 3;
                      });
                    },
                    color: Colors.orange,
                    child: const Text('Add 3 Point'),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 22,),
            ElevatedButton(onPressed: () {
              setState(() {
                teamAPoints = 0;
                teamBPoints = 0;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              fixedSize: const Size(120, 10)
            ),
            child: const Text('Reset', style: TextStyle(color: Colors.black, fontSize: 17),),
            )
          ],
        ),
      ),
    );
  }
}