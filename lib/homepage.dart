// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import './Neu_Box.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[800],
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //row #1
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NeuBox(
                    Icon(Icons.keyboard_arrow_down_rounded,
                        color: Colors.grey[900]),
                    60,
                    60,
                  ),
                  Text('  P L A Y I S T'),
                  NeuBox(
                    Icon(Icons.menu, color: Colors.grey[900]),
                    60,
                    60,
                  ),
                ],
              ),
              SizedBox(height: 25),
              //music cover
              NeuBox(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset('lib/images/NFBALLONS.jfif')),
                      SizedBox(height: 25),
                      Text('Kota The Friend',
                          style: TextStyle(
                            color: Colors.grey[900],
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Birdie',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[900],
                                  fontSize: 24)),
                          Icon(Icons.favorite, color: Colors.grey[900])
                        ],
                      )
                    ],
                  ),
                  385,
                  300),
              //playing time, shuffle,repeat
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green[800],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green.shade900,
                            offset: Offset(4, 4),
                            blurRadius: 15,
                            spreadRadius: 1,
                          ),
                          BoxShadow(
                            color: Colors.green.shade700,
                            offset: Offset(-4, -4),
                            blurRadius: 15,
                            spreadRadius: 1,
                          ),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('0:00'),
                          Icon(Icons.shuffle_rounded),
                          Icon(Icons.repeat_rounded),
                          Text('4:22')
                        ],
                      ),
                    )),
              ),
              //percent percent_indicator
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //skip left
                  Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green[800],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.green.shade900,
                              offset: Offset(4, 4),
                              blurRadius: 15,
                              spreadRadius: 1,
                            ),
                            BoxShadow(
                              color: Colors.green.shade700,
                              offset: Offset(-4, -4),
                              blurRadius: 15,
                              spreadRadius: 1,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(child: Icon(Icons.skip_previous_rounded,size:35, color: Colors.grey[850])),
                      )),

                  //play
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green[800],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green.shade900,
                            offset: Offset(4, 4),
                            blurRadius: 15,
                            spreadRadius: 1,
                          ),
                          BoxShadow(
                            color: Colors.green.shade700,
                            offset: Offset(-4, -4),
                            blurRadius: 15,
                            spreadRadius: 1,
                          ),
                        ]),
                    child: CircularPercentIndicator(
                        radius: 50,
                        lineWidth: 8,
                        percent: 0.65,
                        progressColor: Colors.grey[900],
                        backgroundColor: Colors.green.shade800,
                        circularStrokeCap: CircularStrokeCap.round,
                        animation:true,
                        animationDuration:1000,
                        center: Icon(Icons.play_arrow_rounded,
                            color: Colors.grey[900], size: 55)),
                  ),
                  //skip right
                  Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green[800],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.green.shade900,
                              offset: Offset(4, 4),
                              blurRadius: 15,
                              spreadRadius: 1,
                            ),
                            BoxShadow(
                              color: Colors.green.shade700,
                              offset: Offset(-4, -4),
                              blurRadius: 15,
                              spreadRadius: 1,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(child: Icon(Icons.skip_next_rounded,size:35, color:Colors.grey[850])),
                      )),
                ],
              ),
            ],
          ),
        )));
  }
}
