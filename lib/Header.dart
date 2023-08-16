
import 'package:flutter/material.dart';
import 'package:pbl_project/login.dart';
import 'profile.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
          ),
          child: Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(hexColor('FFFFFF')),
                    Color(hexColor('46FFC8')),
                    Color(hexColor('1E9B76')),
                    Color(hexColor('53766B')),
                  ],
                ),
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.black54),
                borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: Padding(
                padding:  EdgeInsets.all(8.0),
                child: Text(
                  "Hey,Good morning",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Color.fromARGB(255, 13, 12, 12),
                      fontSize: 30,
                      fontFamily: 'Fredoka One'),
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(hexColor('46FFC8')),
                Color(hexColor('FFFFFF')),
                Color(hexColor('53766B')),
              ],
            ),
            shape: BoxShape.rectangle,
            border: Border.all(
              //color: const Color.fromARGB(255, 182, 219, 188),
              width: 1.5,
              style: BorderStyle.solid,
              color: const Color.fromARGB(255, 182, 219, 188),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: GestureDetector(
            onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
            },
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                height: 95,
                width: 95,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 12, 11, 11),
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                    radius: 30,
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
