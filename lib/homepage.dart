import 'package:flutter/material.dart';
import 'package:pbl_project/login.dart';
import 'login1.dart';

int hexColor(String c) {
  String sColor = '0xff' + c;
  sColor = sColor.replaceAll('#', '');
  int dColor = int.parse(sColor);
  return dColor;
}

class homepg extends StatefulWidget {
  const homepg({super.key});

  @override
  State<homepg> createState() => _homepgState();
}

class _homepgState extends State<homepg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color.fromARGB(255, 60, 228, 155)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Mooody",
            style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontFamily: 'Pattaya'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              right: 80,
              left: 80,
            ),
            child: Container(
             
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
                
               
              ),
              
                
                child: Image.network(
                    "https://img.freepik.com/free-vector/organic-flat-people-meditating-illustration_23-2148906556.jpg?w=2000",
                    fit: BoxFit.fill,),
              
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          FloatingActionButton.extended(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => login())));
            },
            backgroundColor:const  Color.fromARGB(255, 167, 241, 225),
            label:const Text(
              "Get started",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Pattaya'),
            ),
          )
        ],
      ),
    );
  }
}
