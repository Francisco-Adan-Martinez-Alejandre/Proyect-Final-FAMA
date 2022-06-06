import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyect02/pages/cat_ar/entertainment/ar_enter.dart';
import 'package:proyect02/pages/cat_ar/entertainment/enter_a_ar.dart';
import 'package:proyect02/pages/cat_ar/entertainment/enter_b_ar.dart';
import 'package:proyect02/pages/cat_ar/entertainment/enter_c_ar.dart';
import 'package:proyect02/pages/cat_ar/politics/ar_politics.dart';
import 'package:proyect02/pages/cat_ar/politics/politics_a_ar.dart';
import 'package:proyect02/pages/cat_ar/politics/politics_b_ar.dart';
import 'package:proyect02/pages/cat_ar/politics/politics_c_ar.dart';
import 'package:proyect02/pages/cat_ar/sports/ar_sports.dart';
import 'package:proyect02/pages/cat_ar/sports/sports_a_ar.dart';
import 'package:proyect02/pages/cat_ar/sports/sports_b_ar.dart';
import 'package:proyect02/pages/cat_ar/sports/sports_c_ar.dart';
import 'package:proyect02/pages/cat_ar/top/ar_top.dart';
import 'package:proyect02/pages/cat_ar/top/top_a_ar.dart';
import 'package:proyect02/pages/cat_ar/top/top_b_ar.dart';
import 'package:proyect02/pages/cat_ar/top/top_c_ar.dart';
import 'package:proyect02/pages/home_page.dart';
import 'package:proyect02/services/ar_services_enter.dart';
import 'package:proyect02/services/ar_services_politics.dart';
import 'package:proyect02/services/ar_services_sports.dart';
import 'package:proyect02/services/ar_services_top.dart';
import '../barra.dart';

class HomeAr extends StatelessWidget {
  const HomeAr({Key? key}) : super(key: key);

  String leerImagen(String page) {
    String pagina = page;
    String buscar = '';
    String complemento = 'https:';
    for (int i = 0; i < 6; i++) {
      buscar += pagina[i];
    }
    if (buscar != 'https:') {
      if (buscar == 'http:/') {
      } else {
        pagina = complemento + page;
      }
    }
    return pagina;
  }

  @override
  Widget build(BuildContext context) {
    final arDataTop = Provider.of<ArServicesTop>(context);
    final arDataPolitics = Provider.of<ArServicesPolitics>(context);
    final arDataEntertainment = Provider.of<ArServicesEnter>(context);
    final arDataSports = Provider.of<ArServicesSports>(context);

    if (arDataTop.propertyArTop.isEmpty) {
      return Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: const Center(
            child:
                CircularProgressIndicator(color: Color.fromARGB(255, 0, 0, 0))),
      );
    }
    if (arDataPolitics.propertyArPolitics.isEmpty) {
      return Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: const Center(
            child:
                CircularProgressIndicator(color: Color.fromARGB(255, 0, 0, 0))),
      );
    }
    if (arDataEntertainment.propertyArEnter.isEmpty) {
      return Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: const Center(
            child:
                CircularProgressIndicator(color: Color.fromARGB(255, 0, 0, 0))),
      );
    }
    if (arDataSports.propertyArSports.isEmpty) {
      return Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: const Center(
            child:
                CircularProgressIndicator(color: Color.fromARGB(255, 0, 0, 0))),
      );
    }

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/inicio2.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
          drawer: const Barra(),
          appBar: AppBar(
            toolbarHeight: 70,
            centerTitle: true,
            title: Row(
              children: const [
                SizedBox(width: 40),
                Text('Argentina',
                    style: TextStyle(
                        fontFamily: 'LibreBodoni_Italic',
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                SizedBox(width: 15),
                Image(
                  image: AssetImage('assets/argentinabandera.png'),
                  width: 40,
                ),
              ],
            ),
            backgroundColor: const Color.fromARGB(255, 65, 105, 225),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
                },
                icon: const Icon(
                  Icons.home,
                  size: 30,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          body: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 30),
                      ////////////////////////////////////////////////
                      Container(
                        height: 200,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black45,
                                offset: Offset(4, 4),
                                blurRadius: 10)
                          ],
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const ArTop(),
                                ));
                              },
                              child: Row(
                                children: const [
                                  SizedBox(width: 20),
                                  Text(
                                    "Top",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromARGB(235, 0, 0, 0),
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Contrail_One'),
                                  ),
                                  Icon(
                                    Icons.touch_app,
                                    color: Colors.black,
                                    size: 30,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 120,
                              width: 300,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => const TopAAr(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(arDataTop
                                            .propertyArTop[1].imageUrl),
                                        width: 190,
                                        //height: 10,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => const TopBAr(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(arDataTop
                                            .propertyArTop[2].imageUrl),
                                        width: 190,
                                        //height: 10,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => const TopCAr(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(arDataTop
                                            .propertyArTop[3].imageUrl),
                                        width: 190,
                                        //height: 10,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      ///////////////////////////////////////////////
                      Container(
                        height: 200,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black45,
                                offset: Offset(4, 4),
                                blurRadius: 10)
                          ],
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const ArPolitics(),
                                ));
                              },
                              child: Row(
                                children: const [
                                  SizedBox(width: 20),
                                  Text(
                                    "Política",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromARGB(235, 0, 0, 0),
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Contrail_One'),
                                  ),
                                  Icon(
                                    Icons.touch_app,
                                    color: Colors.black,
                                    size: 30,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 120,
                              width: 300,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) =>
                                            const PoliticsAAr(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(arDataPolitics
                                            .propertyArPolitics[1].imageUrl),
                                        width: 190,
                                        //height: 10,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) =>
                                            const PoliticsBAr(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(arDataPolitics
                                            .propertyArPolitics[2].imageUrl),
                                        width: 190,
                                        //height: 10,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) =>
                                            const PoliticsCAr(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(arDataPolitics
                                            .propertyArPolitics[3].imageUrl),
                                        width: 190,
                                        //height: 10,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      /////////////////////////////////////////////////
                      Container(
                        height: 200,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black45,
                                offset: Offset(4, 4),
                                blurRadius: 10)
                          ],
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const ArEnter(),
                                ));
                              },
                              child: Row(
                                children: const [
                                  SizedBox(width: 20),
                                  Text(
                                    "Entretenimiento",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromARGB(235, 0, 0, 0),
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Contrail_One'),
                                  ),
                                  Icon(
                                    Icons.touch_app,
                                    color: Colors.black,
                                    size: 30,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 120,
                              width: 300,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => const EnterAAr(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(arDataEntertainment
                                            .propertyArEnter[1].imageUrl),
                                        width: 190,
                                        //height: 10,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => const EnterBAr(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(arDataEntertainment
                                            .propertyArEnter[2].imageUrl),
                                        width: 190,
                                        //height: 10,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => const EnterCAr(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(arDataEntertainment
                                            .propertyArEnter[3].imageUrl),
                                        width: 190,
                                        //height: 10,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      ///////////////////////////////////////////////////////
                      Container(
                        height: 200,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black45,
                                offset: Offset(4, 4),
                                blurRadius: 10)
                          ],
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const ArSports(),
                                ));
                              },
                              child: Row(
                                children: const [
                                  SizedBox(width: 20),
                                  Text(
                                    "Deportes",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromARGB(235, 0, 0, 0),
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Contrail_One'),
                                  ),
                                  Icon(
                                    Icons.touch_app,
                                    color: Colors.black,
                                    size: 30,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 120,
                              width: 300,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => const SportsAAr(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(arDataSports
                                            .propertyArSports[1].imageUrl),
                                        width: 190,
                                        //height: 10,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => const SportsBAr(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(arDataSports
                                            .propertyArSports[2].imageUrl),
                                        width: 190,
                                        //height: 10,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => const SportsCAr(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(arDataSports
                                            .propertyArSports[3].imageUrl),
                                        width: 190,
                                        //height: 10,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  )
                ],
              ))),
    );
  }
}
