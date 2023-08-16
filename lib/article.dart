import 'package:flutter/material.dart';
import 'package:pbl_project/art1.dart';
import 'package:pbl_project/classarticle.dart';
import 'articles.dart/Articlemodel.dart';
import 'articles.dart/art.dart';
import 'articles.dart/article0.dart';
import 'articles.dart/article1.dart';
import 'articles.dart/article2.dart';
import 'articles.dart/article3.dart';
import 'articles.dart/article4.dart';
class article extends StatefulWidget {
  const article({super.key});

  @override
  State<article> createState() => _articleState();
}

class _articleState extends State<article> {
  List<articles> artlist = Myarticles.articlelist();
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          // Color.fromARGB(255, 233, 237, 235),
          title: const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Align(
              alignment: Alignment.center,
              child: Text(" Read Articles",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Pacifico',
                      fontSize: 40)),
            ),
          ),
        ),
        body: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            const Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                    bottom: 15,
                  ),
                  child: Text(
                    "Select The Article ",
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Pattaya',
                      color: Color.fromARGB(255, 66, 7, 138),
                    ),
                  )),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: artlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.all(20),
                      height: 190,
                      child: Stack(
                        children: [
                          Positioned.fill(
                              child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'images/' + artlist[index].img,
                              //"https://images.unsplash.com/photo-1604251405903-b8c4e83cdf7c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmVsYXhhdGlvbnxlbnwwfHwwfHw%3D&w=1000&q=80",
                              fit: BoxFit.cover,
                            ),
                          )),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 130,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  gradient: LinearGradient(
                                      end: Alignment.topCenter,
                                      begin: Alignment.bottomCenter,
                                      colors: [
                                        Colors.black.withOpacity(0.7),
                                        Colors.transparent
                                      ])),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(
                                10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipOval(
                                    child: GestureDetector(
                                      onTap: () {
                                        if (index == 0) {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: ((context) =>
                                                      const article0())));
                                        }
                                        if (index == 1) {
                                              Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: ((context) =>
                                                      const article1())));
                                        }
                                        if (index == 2) {
                                              Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: ((context) =>
                                                      const article2())));
                                        }
                                        if (index == 3) {
                                              Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: ((context) =>
                                                      const article3())));
                                        }
                                        if (index == 4) {
                                              Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: ((context) =>
                                                      const article4())));
                                        }


                                      },
                                      child: Container(
                                        color: Colors.white,
                                        padding: const EdgeInsets.all(10),
                                        child: artlist[index].icon,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    artlist[index].name,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                          // Image.asset('assets/images'+artlist[index].img+'.jpeg')
                        ],
                      ),
                    );
                    // return ListTile(
                    //   leading: Icon(Icons.newspaper_sharp),
                    //   title: Text(
                    //     'Article ${index + 1}',
                    //   ),
                    //   onTap: () {
                    //     Navigator.push(context,
                    //         MaterialPageRoute(builder: ((context) => const art1())));
                    //   },
                    // );
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
