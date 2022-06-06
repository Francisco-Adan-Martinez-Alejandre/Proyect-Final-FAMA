import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyect02/services/ar_services_enter.dart';
import 'package:proyect02/services/ar_services_politics.dart';
import 'package:proyect02/services/ar_services_sports.dart';
import 'package:proyect02/services/ar_services_top.dart';
import 'package:proyect02/services/co_services_enter.dart';
import 'package:proyect02/services/co_services_politics.dart';
import 'package:proyect02/services/co_services_sports.dart';
import 'package:proyect02/services/co_services_top.dart';
import 'package:proyect02/services/mx_services_enter.dart';
import 'package:proyect02/services/mx_services_politics.dart';
import 'package:proyect02/services/mx_services_sports.dart';
import 'package:proyect02/services/mx_services_top.dart';
import 'package:proyect02/services/us_services_enter.dart';
import 'package:proyect02/services/us_services_politics.dart';
import 'package:proyect02/services/us_services_sports.dart';
import 'package:proyect02/services/us_services_top.dart';

import 'pages/home_page.dart';

void main() => runApp(const AboutMeApp());

class AboutMeApp extends StatelessWidget {
  const AboutMeApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => MxServicesTop(),
          ),
          ChangeNotifierProvider(
            create: (_) => MxServicesPolitics(),
          ),
          ChangeNotifierProvider(
            create: (_) => MxServicesEnter(),
          ),
          ChangeNotifierProvider(
            create: (_) => MxServicesSports(),
          ),
          ChangeNotifierProvider(
            create: (_) => CoServicesTop(),
          ),
          ChangeNotifierProvider(
            create: (_) => CoServicesPolitics(),
          ),
          ChangeNotifierProvider(
            create: (_) => CoServicesEnter(),
          ),
          ChangeNotifierProvider(
            create: (_) => CoServicesSports(),
          ),
          ChangeNotifierProvider(
            create: (_) => ArServicesTop(),
          ),
          ChangeNotifierProvider(
            create: (_) => ArServicesPolitics(),
          ),
          ChangeNotifierProvider(
            create: (_) => ArServicesEnter(),
          ),
          ChangeNotifierProvider(
            create: (_) => ArServicesSports(),
          ),
          ChangeNotifierProvider(
            create: (_) => UsServicesTop(),
          ),
          ChangeNotifierProvider(
            create: (_) => UsServicesPolitics(),
          ),
          ChangeNotifierProvider(
            create: (_) => UsServicesEnter(),
          ),
          ChangeNotifierProvider(
            create: (_) => UsServicesSports(),
          ),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        ));
  }
}
