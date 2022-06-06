import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:proyect02/models/news_model.dart';

class ArServicesPolitics extends ChangeNotifier {
  final String _urlBase = 'newsdata.io';
  final String _apiKey = 'pub_80530e8b11407b53916baa0b4193a4cd22ab';

  List<Noticia> propertyArPolitics = [];

  ArServicesPolitics() {
    getService();
  }

  getService() async {
    final url = Uri.https(
      _urlBase,
      '/api/1/news',
      {'category': 'politics', 'country': 'ar', 'language': 'es'},
    );
    final respuesta = await http.get(url, headers: {'X-ACCESS-KEY': _apiKey});

    final noticia = Noticias.fromJson(utf8.decode(respuesta.bodyBytes));
    propertyArPolitics = noticia.results!;

    notifyListeners();
  }
}
