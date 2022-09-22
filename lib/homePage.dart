import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:ui_1/drawer.dart';
import 'package:ui_1/theme.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: Box(child: Icon(Icons.arrow_back)),
                  ),
                  Text(
                    'P L A Y L I S T',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: Box(child:Icon(Icons.menu)
                  ),)
                ],
              ),
              const SizedBox(
                height: 25,
                width: 25,
              ),
              Box(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: ClipRRect(
                        child: Image.asset('assets/weeknd.jpg'),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'The Hills',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Weeknd',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 112, 111, 111)),
                            )
                          ],
                        ),
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('1:56'),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text('4:03')
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Box(
                child: LinearPercentIndicator(
                  lineHeight: 8,
                  linearGradient: const LinearGradient(
                      colors: [Colors.red, Color.fromARGB(255, 228, 131, 124)]),
                  percent: 0.50,
                  animationDuration: 1500,
                  animation: true,
                  backgroundColor: Colors.grey,
                  barRadius: const Radius.circular(30),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Expanded(
                    child: Box(
                      child: Icon(Icons.skip_previous),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Box(
                      child: Icon(Icons.play_arrow),
                    ),
                  ),
                  Expanded(
                    child: Box(
                      child: Icon(Icons.skip_next),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
