class Articlemodel {
  String? author;
  String? title;
  String? description;
  String? url;
  final urltoImage;
  String? content;
  DateTime? publishedat;
  Articlemodel(
      {required this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urltoImage,
      required this.content,
      required this.publishedat});
}
