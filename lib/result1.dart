import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'page1.dart';

class result1 extends StatefulWidget {
  const result1({super.key});

  @override
  State<result1> createState() => _result1State();
}

class _result1State extends State<result1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Scaffold(
        appBar: AppBar(
        title: const Text("Ohh!!You seem to be upset"),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          // borderRadius: BorderRadius.only(
          //     bottomRight: Radius.circular(25),
          //     bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
        backgroundColor: Color.fromARGB(255, 8, 98, 41),
      ), 
        
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 109, 194, 111),
              Color.fromARGB(255, 37, 129, 40)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Column(mainAxisSize: MainAxisSize.max, children: [
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                  "  Here are some ways of dealing with   your Anxiety: ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("   - Practice deep breathing exercises for 10 minutes"),
                  SizedBox(
                    height: 5,
                  ),
                  Text("   -Try a guided meditation or relaxation video"),
                  SizedBox(
                    height: 5,
                  ),
                  Text("   - Take a break and go for a walk outside"),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      "   - Listen to calming music or nature sounds for 15 minutes"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "         ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Expanded(
                    child: ListView(children: <Widget>[
                      const Center(
                          child: Text(
                        "Task you can do according to your Mood:",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )),
                      DataTable(
                        showBottomBorder: true,
                        dividerThickness: 2.0,

                        // border: TableBorder.all(borderRadius: BorderRadius.all(12,2)),
                        columnSpacing: 10,
                        dataRowHeight: 65,
                        columns: const [
                          DataColumn(
                              label: Text('   SAD',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold))),
                          DataColumn(
                              label: Text('OVERWHELMED',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold))),
                          DataColumn(
                              label: Text('ANGRY',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold))),
                        ],
                        rows: const [
                          DataRow(cells: [
                            DataCell(Text(
                                'Reach out to a friend or loved one for support')),
                            DataCell(Text('Take a 20-minute power nap')),
                            DataCell(
                                Text('Write down their feelings in a journal')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text(
                                'Practice self-compassion by writing a kind letter to themselves')),
                            DataCell(Text(
                                'Go for a walk in nature or visit a nearby park')),
                            DataCell(Text(
                                'Engage in physical activity, such as running or weightlifting')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text(
                                'Engage in a hobby or activity they enjoy, such as painting or playing music')),
                            DataCell(Text(
                                'Listen to a podcast or audiobook for relaxation')),
                            DataCell(Text(
                                'Practice mindfulness meditation for 10 minutes')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text(
                                'Volunteer at a local organization or charity')),
                            DataCell(Text('Take a warm bath or shower')),
                            DataCell(Text(
                                'Take a break and practice a relaxing activity, such as knitting or coloring')),
                          ]),
                        ],
                      ),
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 50, horizontal: 80),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const page1())));
                        },
                        child: Text("Tap to restart the test !!!",
                        style: TextStyle(
                          color: Color.fromARGB(255, 5, 5, 5),
                          fontWeight: FontWeight.bold,
                        ),),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20  )
                            ),
                            
                            primary: Color.fromARGB(255, 39, 175, 59),
                            textStyle: TextStyle(
                                color: Color.fromARGB(255, 233, 228, 227)))),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
