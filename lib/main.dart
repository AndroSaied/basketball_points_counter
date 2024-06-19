import 'package:basketball_points_counter/cubit/counter_cubit/counter_cubit.dart';
import 'package:basketball_points_counter/cubit/counter_cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BasketballPoints());
}

class BasketballPoints extends StatelessWidget {
  const BasketballPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AppPage(),
      ),
    );
  }
}

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
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

                      Text(
                        BlocProvider.of<CounterCubit>(context).teamAP.toString(),
                        style: const TextStyle(fontSize: 150),),

                      MaterialButton(onPressed: () {
                        BlocProvider.of<CounterCubit>(context).teamIncrement(team: "A", buttonNum: 1);
                      },
                        color: Colors.orange,
                        child: const Text('Add 1 Point'),
                      ),

                      MaterialButton(onPressed: () {
                        BlocProvider.of<CounterCubit>(context).teamIncrement(team: "A", buttonNum: 2);
                      },
                        color: Colors.orange,
                        child: const Text('Add 2 Point'),
                      ),

                      MaterialButton(onPressed: () {
                        BlocProvider.of<CounterCubit>(context).teamIncrement(team: "A", buttonNum: 3);
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

                      Text(
                        BlocProvider.of<CounterCubit>(context).teamBP.toString(),
                        style: const TextStyle(fontSize: 150),
                      ),

                      MaterialButton(onPressed: () {
                        BlocProvider.of<CounterCubit>(context).teamIncrement(team: "B", buttonNum: 1);
                      },
                        color: Colors.orange,
                        child: const Text('Add 1 Point'),
                      ),

                      MaterialButton(onPressed: () {
                        BlocProvider.of<CounterCubit>(context).teamIncrement(team: "B", buttonNum: 2);
                      },
                        color: Colors.orange,
                        child: const Text('Add 2 Point'),
                      ),

                      MaterialButton(onPressed: () {
                        BlocProvider.of<CounterCubit>(context).teamIncrement(team: "B", buttonNum: 3);
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
                BlocProvider.of<CounterCubit>(context).teamReset();
              },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    fixedSize: const Size(120, 10)
                ),
                child: const Text(
                  'Reset',
                  style: TextStyle(color: Colors.black, fontSize: 17),),
              )
            ],
          ),
        );
      },
    );
  }
}
