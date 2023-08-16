import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class result_2 extends StatefulWidget {
  const result_2({super.key});

  @override
  State<result_2> createState() => _result_2State();
}

class _result_2State extends State<result_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("    Great your Mood seems to be Happy!! "),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 36, 84, 38),
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
                "  Although you seem to happy here are some of the way that can help you improve your Mood : ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("   - Take a break from your work and practise Yoga"),
                SizedBox(
                  height: 5,
                ),
                Text("   -Try to go outside and have a brief walk "),
                SizedBox(
                  height: 5,
                ),
                Text("   - Try talking with your family "),
                SizedBox(
                  height: 5,
                ),
                Text("   - Listen to calming music"),
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
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                      onPressed: null,
                      child: Text("Tap to restart the test !!!"),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          textStyle: TextStyle(
                              color: Color.fromARGB(255, 193, 184, 183)))),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
