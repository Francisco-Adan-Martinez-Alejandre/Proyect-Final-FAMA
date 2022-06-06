import 'package:flutter/material.dart';
import 'package:proyect02/pages/cat_ar/entertainment/ar_enter.dart';
import 'package:proyect02/pages/cat_ar/politics/ar_politics.dart';
import 'package:proyect02/pages/cat_ar/sports/ar_sports.dart';
import 'package:proyect02/pages/cat_ar/top/ar_top.dart';
import 'package:proyect02/pages/cat_co/entertainment/co_enter.dart';
import 'package:proyect02/pages/cat_co/politics/co_politics.dart';
import 'package:proyect02/pages/cat_co/sports/co_sports.dart';
import 'package:proyect02/pages/cat_co/top/co_top.dart';
import 'package:proyect02/pages/cat_mx/entertainment/mx_enter.dart';
import 'package:proyect02/pages/cat_mx/politics/mx_politics.dart';
import 'package:proyect02/pages/cat_mx/sports/mx_sports.dart';
import 'package:proyect02/pages/cat_mx/top/mx_top.dart';
import 'package:proyect02/pages/cat_us/entertainment/us_enter.dart';
import 'package:proyect02/pages/cat_us/politics/us_politics.dart';
import 'package:proyect02/pages/cat_us/sports/us_sports.dart';
import 'package:proyect02/pages/cat_us/top/us_top.dart';
import 'package:proyect02/pages/home_ar.dart';
import 'package:proyect02/pages/home_co.dart';
import 'package:proyect02/pages/home_mx.dart';
import 'package:proyect02/pages/home_page.dart';
import 'package:proyect02/pages/home_us.dart';

class Barra extends StatelessWidget {
  const Barra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const SizedBox(height: 30),
          const UserAccountsDrawerHeader(
            accountName: Text(""),
            accountEmail: Text(""),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/mundo.png'),
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
                width: 200.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 0, 205),
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black45,
                        offset: Offset(4, 4),
                        blurRadius: 10)
                  ],
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));
                  },
                  child: const Center(
                      child: Text("Inicio",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'LibreBodoni_Italic',
                              fontWeight: FontWeight.w900,
                              fontSize: 25))),
                )),
          ),
          /////////////////////////////////////////////////////////
          ExpansionTile(
            title: Container(
                width: 300,
                height: 50.0,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 0, 205),
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black45,
                        offset: Offset(4, 4),
                        blurRadius: 10)
                  ],
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomeMx(),
                    ));
                  },
                  child: const Center(
                      child: Text("México",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Contrail_One',
                              fontWeight: FontWeight.w900,
                              fontSize: 20))),
                )),
            children: [
              Container(
                  width: 270.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 255),
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(4, 4),
                          blurRadius: 10)
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MxTop(),
                      ));
                    },
                    child: const Center(
                        child: Text("Top",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Jura',
                                fontWeight: FontWeight.bold,
                                fontSize: 15))),
                  )),
              const SizedBox(height: 5),
              Container(
                  width: 270.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 255),
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(4, 4),
                          blurRadius: 10)
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MxPolitics(),
                      ));
                    },
                    child: const Center(
                        child: Text("Política",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Jura',
                                fontWeight: FontWeight.bold,
                                fontSize: 15))),
                  )),
              const SizedBox(height: 5),
              Container(
                  width: 270.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 255),
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(4, 4),
                          blurRadius: 10)
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MxEnter(),
                      ));
                    },
                    child: const Center(
                        child: Text("Entretenimiento",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Jura',
                                fontWeight: FontWeight.bold,
                                fontSize: 15))),
                  )),
              const SizedBox(height: 5),
              Container(
                  width: 270.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 255),
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(4, 4),
                          blurRadius: 10)
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MxSports(),
                      ));
                    },
                    child: const Center(
                        child: Text("Deportes",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Jura',
                                fontWeight: FontWeight.bold,
                                fontSize: 15))),
                  )),
              const SizedBox(height: 5),
            ],
          ),
          /////////////////////////////////////////////////////////
          ExpansionTile(
            title: Container(
                width: 300,
                height: 50.0,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 0, 205),
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black45,
                        offset: Offset(4, 4),
                        blurRadius: 10)
                  ],
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomeUs(),
                    ));
                  },
                  child: const Center(
                      child: Text("United States",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Contrail_One',
                              fontWeight: FontWeight.w900,
                              fontSize: 20))),
                )),
            children: [
              Container(
                  width: 270.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 255),
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(4, 4),
                          blurRadius: 10)
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const UsTop(),
                      ));
                    },
                    child: const Center(
                        child: Text("Top",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Jura',
                                fontWeight: FontWeight.bold,
                                fontSize: 15))),
                  )),
              const SizedBox(height: 5),
              Container(
                  width: 270.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 255),
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(4, 4),
                          blurRadius: 10)
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const UsPolitics(),
                      ));
                    },
                    child: const Center(
                        child: Text("Politics",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Jura',
                                fontWeight: FontWeight.bold,
                                fontSize: 15))),
                  )),
              const SizedBox(height: 5),
              Container(
                  width: 270.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 255),
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(4, 4),
                          blurRadius: 10)
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const UsEnter(),
                      ));
                    },
                    child: const Center(
                        child: Text("Entertainment",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Jura',
                                fontWeight: FontWeight.bold,
                                fontSize: 15))),
                  )),
              const SizedBox(height: 5),
              Container(
                  width: 270.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 255),
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(4, 4),
                          blurRadius: 10)
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const UsSports(),
                      ));
                    },
                    child: const Center(
                        child: Text("Sports",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Jura',
                                fontWeight: FontWeight.bold,
                                fontSize: 15))),
                  )),
              const SizedBox(height: 5),
            ],
          ),
          /////////////////////////////////////////////////////////
          ExpansionTile(
            title: Container(
                width: 300,
                height: 50.0,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 0, 205),
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black45,
                        offset: Offset(4, 4),
                        blurRadius: 10)
                  ],
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomeCo(),
                    ));
                  },
                  child: const Center(
                      child: Text("Colombia",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Contrail_One',
                              fontWeight: FontWeight.w900,
                              fontSize: 20))),
                )),
            children: [
              Container(
                  width: 270.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 255),
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(4, 4),
                          blurRadius: 10)
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CoTop(),
                      ));
                    },
                    child: const Center(
                        child: Text("Top",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Jura',
                                fontWeight: FontWeight.bold,
                                fontSize: 15))),
                  )),
              const SizedBox(height: 5),
              Container(
                  width: 270.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 255),
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(4, 4),
                          blurRadius: 10)
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CoPolitics(),
                      ));
                    },
                    child: const Center(
                        child: Text("Política",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Jura',
                                fontWeight: FontWeight.bold,
                                fontSize: 15))),
                  )),
              const SizedBox(height: 5),
              Container(
                  width: 270.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 255),
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(4, 4),
                          blurRadius: 10)
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CoEnter(),
                      ));
                    },
                    child: const Center(
                        child: Text("Entretenimiento",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Jura',
                                fontWeight: FontWeight.bold,
                                fontSize: 15))),
                  )),
              const SizedBox(height: 5),
              Container(
                  width: 270.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 255),
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(4, 4),
                          blurRadius: 10)
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CoSports(),
                      ));
                    },
                    child: const Center(
                        child: Text("Deportes",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Jura',
                                fontWeight: FontWeight.bold,
                                fontSize: 15))),
                  )),
              const SizedBox(height: 5),
            ],
          ),
          ///////////////////////////////////////////////////////
          ExpansionTile(
            title: Container(
                width: 300,
                height: 50.0,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 0, 205),
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black45,
                        offset: Offset(4, 4),
                        blurRadius: 10)
                  ],
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomeAr(),
                    ));
                  },
                  child: const Center(
                      child: Text("Argentina",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Contrail_One',
                              fontWeight: FontWeight.w900,
                              fontSize: 20))),
                )),
            children: [
              Container(
                  width: 270.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 255),
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(4, 4),
                          blurRadius: 10)
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ArTop(),
                      ));
                    },
                    child: const Center(
                        child: Text("Top",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Jura',
                                fontWeight: FontWeight.bold,
                                fontSize: 15))),
                  )),
              const SizedBox(height: 5),
              Container(
                  width: 270.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 255),
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(4, 4),
                          blurRadius: 10)
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ArPolitics(),
                      ));
                    },
                    child: const Center(
                        child: Text("Política",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Jura',
                                fontWeight: FontWeight.bold,
                                fontSize: 15))),
                  )),
              const SizedBox(height: 5),
              Container(
                  width: 270.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 255),
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(4, 4),
                          blurRadius: 10)
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ArEnter(),
                      ));
                    },
                    child: const Center(
                        child: Text("Entretenimiento",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Jura',
                                fontWeight: FontWeight.bold,
                                fontSize: 15))),
                  )),
              const SizedBox(height: 5),
              Container(
                  width: 270.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 255),
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(4, 4),
                          blurRadius: 10)
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ArSports(),
                      ));
                    },
                    child: const Center(
                        child: Text("Deportes",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Jura',
                                fontWeight: FontWeight.bold,
                                fontSize: 15))),
                  )),
              const SizedBox(height: 5),
            ],
          ),
        ],
      ),
    );
  }
}
