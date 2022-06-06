// To parse this JSON data, do
//
//     final noticiasmx = noticiasmxFromMap(jsonString);

import 'dart:convert';

class Noticias {
  Noticias({
    this.status,
    this.totalResults,
    this.results,
    this.nextPage,
  });

  String? status;
  int? totalResults;
  List<Noticia>? results;
  int? nextPage;

  factory Noticias.fromJson(String str) => Noticias.fromMap(json.decode(str));

  factory Noticias.fromMap(Map<String, dynamic> json) => Noticias(
        status: json["status"],
        totalResults: json["totalResults"],
        results:
            List<Noticia>.from(json["results"].map((x) => Noticia.fromMap(x))),
        nextPage: json["nextPage"],
      );
}

class Noticia {
  Noticia({
    required this.title,
    required this.link,
    required this.keywords,
    required this.creator,
    required this.videoUrl,
    required this.description,
    required this.content,
    required this.pubDate,
    required this.imageUrl,
    required this.sourceId,
    required this.country,
    required this.category,
    required this.language,
  });

  String title;
  String link;
  String keywords;
  String creator;
  String videoUrl;
  String description;
  String content;
  String pubDate;
  String imageUrl;
  String sourceId;
  String country;
  String category;
  String language;

  factory Noticia.fromJson(String str) => Noticia.fromMap(json.decode(str));

  factory Noticia.fromMap(Map<String, dynamic> json) => Noticia(
        title: json["title"] == null
            ? "Próximamente - Coming Soon"
            : json["title"].toString(),
        link: json["link"].toString(),
        keywords: json["keywords"] == null ? "" : json["keywords"].toString(),
        creator: json["creator"] == null
            ? "[Anónimo - Anonymous]"
            : json["creator"].toString(),
        videoUrl: json["video_url"] == null ? "" : json["video_url"].toString(),
        description: json["description"] == null
            ? "Estamos trabajando en ello - We are working on it"
            : json["description"].toString(),
        content: json["content"] == null
            ? "Estamos trabajando en ello - We are working on it"
            : json["content"].toString(),
        pubDate: json["pubDate"] == null
            ? "Próximamente"
            : json["pubDate"].toString(),
        imageUrl: json["image_url"] == null
            ? "https://assets.stickpng.com/images/5a0acb755a997e1c2cea10be.png"
            : json["image_url"].toString(),
        sourceId: json["sourceId"].toString(),
        country: json["country"].toString(),
        category: json["category"].toString(),
        language: json["language"].toString(),
      );
}
