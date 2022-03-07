import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;
  List quotes = [
    ' “It Doesn’t Matter Where You Came From. All That Matters Is Where You Are Going.”- Brian Tracy',
    '“You Can Develop Any Habit Or Thought Or Behavior That You Consider Desirable Or Necessary.” -Brian Tracy',
    '“A Clear Vision, Backed By Definite Plans, Gives You A Tremendous Feeling Of Confidence And Personal Power.”- Brian Tracy',
    '“The Person Who Says It Cannot Be Done Should Not Interrupt The Person Who Is Doing It.” – Chinese Proverb',
    '“Everything You’ve Ever Wanted Is On The Other Side Of Fear.”- George Addair',
    'I am thankful for all of those who said NO to me. It’s because of them I’m doing it myself. – Albert Einstein',
    'Enthusiasm is a kind of faith that has been set on fire. George Matthew Adams',
    '“Let go of the thoughts that don’t make you strong." —Karen Salmansohn',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blues and Peaches'),
        backgroundColor: Colors.blue.shade700,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
                width: 350,
                height: 200,
                margin: const EdgeInsets.only(top: 30.0),
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(14.5)),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(30.0),
                      child: const Text(
                        "Daily dose of goodness",
                        style: TextStyle(
                            fontSize: 22.8,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                        child: Text(
                      quotes[_index % quotes.length],
                      style: const TextStyle(
                          fontSize: 16.8,
                          color: Colors.black45,
                          fontWeight: FontWeight.bold),
                    )),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: ElevatedButton.icon(
                onPressed: _showQuote,
                icon: const Icon(Icons.wb_sunny),
                style:
                    ElevatedButton.styleFrom(primary: Colors.blue.shade700),
                label: const Text(
                  "Inspire me",
                  style: TextStyle(
                    fontSize: 16.8,
                  ),
                )),
          ),
          const Spacer()
        ],
      ),
    );
  }

  void _showQuote() {
    //Get random integer and use it as the next quotes index to be dispalyed

    setState(() {
      _index = Random().nextInt(quotes.length) + 1;
    });
  }
}
