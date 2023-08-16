import 'package:flutter/material.dart';
import 'package:pbl_project/login.dart';
import 'package:pbl_project/questionmain.dart';
import 'package:pbl_project/article.dart';
import 'package:pbl_project/meter.dart';


class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: const EdgeInsets.only(right: 0),
              height: 100,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(60)),
                gradient: LinearGradient(
                  colors: [
                    Color(hexColor('FFFFFF')),
                    Color(hexColor('46FFC8')),
                    Color(hexColor('1E9B76')),
                    Color(hexColor('53766B')),
                    // Color(hexColor('53766B')),
                  ],
                ),
              ),
              child:const  Padding(
                padding:  EdgeInsets.only(
                    right: 15, left: 50, top: 20, bottom: 10),
                child: Text(
                  "Test your stress level",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Color.fromARGB(255, 18, 20, 20),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Fredoka One'
                      //backgroundColor: Colors.greenAccent),
                      ),
                ),
              ),
            ),
          ),
        ]),
       const SizedBox(
          height: 20,
        ),
        Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: FloatingActionButton.large(
                heroTag: '1',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>
                               Ques()))
                  );

                  
                },
                backgroundColor: Color.fromRGBO(33, 156, 120, 1),
                child: const Text(
                  "Test your Mood",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 16, 18, 18),
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'rammettoOne',
                    //backgroundColor: Colors.greenAccent),
                  ),
                ),
              ),
            )
            ),
        const SizedBox(
          height: 50,
        ),
        Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: FloatingActionButton.large(
                heroTag: '2',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>
                              const article()))
                  );
                },
                backgroundColor: Color.fromRGBO(33, 156, 120, 1),
                child: const Text(
                  "Read Articles",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Color.fromARGB(255, 11, 11, 11),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RammettoOne'
                      //backgroundColor: Colors.greenAccent),
                      ),
                ),
              ),
            )),
        const SizedBox(
          height: 50,
        ),
        Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 100),
              child: FloatingActionButton.large(
                heroTag: '3',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>
                              const meter()))
                  );
                },
                backgroundColor:const  Color.fromRGBO(33, 156, 120, 1),
                child: const Text(
                  "Mood Meter",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 14, 15, 14),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RammettoOne',
                    //backgroundColor: Colors.greenAccent),
                  ),
                ),
              ),
            )),
       const  SizedBox(
          height: 10,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 50),
              child: FloatingActionButton.large(
                heroTag: '4',
                onPressed: () {},
                backgroundColor:const  Color.fromRGBO(33, 156, 120, 1),
                child:const Text(
                  "Play fun Games",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 19, 21, 20),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RammettoOne'
                      //backgroundColor: Colors.greenAccent),
                      ),
                ),
              ),
            )),
      ],
    );
    
  }
}
