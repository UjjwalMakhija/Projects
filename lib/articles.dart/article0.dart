import 'Articlemodel.dart';
import 'art.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class article0 extends StatefulWidget {
  const article0({super.key});

  @override
  State<article0> createState() => _article0State();
}

class _article0State extends State<article0> {
  List<Articlemodel> article = <Articlemodel>[];
  bool _loading = true;
  @override
  void initState() {
    super.initState();
    getart();
  }

  getart() async {
    art artclass = art();
    await artclass.getart();
    article = artclass.Art;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            " Hello there",
            textAlign: TextAlign.center,
          ),
        ),
        body: _loading
            ? Center(
                child: Container(
                  child: CircularProgressIndicator(),
                ),
              )
            : SingleChildScrollView(
                child: Container(
                  child: ListView.builder(
                      itemCount: article.length,
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Articletile(
                            imageurl: article[index].urltoImage,
                            title: article[index].title,
                            des: article[index].description);
                      }),
                ),
              ));
  }
}

class Articletile extends StatelessWidget {
  final Object? imageurl;
  final String? title;
  final String? des;
  const Articletile(
      {required this.imageurl, required this.title, required this.des});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 14),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: imageurl == null
                ? const Placeholder()
                : Image.network("$imageurl"),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            title.toString(),
            style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            des.toString(),
            style:
                TextStyle(fontSize: 10, color: Color.fromARGB(255, 52, 51, 51)),
          )
        ],
      ),
    );
  }
}
