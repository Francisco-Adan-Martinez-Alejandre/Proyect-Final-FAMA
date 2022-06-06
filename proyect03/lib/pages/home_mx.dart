import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyect02/pages/cat_mx/entertainment/enter_a_mx.dart';
import 'package:proyect02/pages/cat_mx/entertainment/enter_b_mx.dart';
import 'package:proyect02/pages/cat_mx/entertainment/enter_c_mx.dart';
import 'package:proyect02/pages/cat_mx/entertainment/mx_enter.dart';
import 'package:proyect02/pages/cat_mx/politics/mx_politics.dart';
import 'package:proyect02/pages/cat_mx/politics/politics_a_mx.dart';
import 'package:proyect02/pages/cat_mx/politics/politics_b_mx.dart';
import 'package:proyect02/pages/cat_mx/politics/politics_c_mx.dart';
import 'package:proyect02/pages/cat_mx/sports/mx_sports.dart';
import 'package:proyect02/pages/cat_mx/sports/sports_a_mx.dart';
import 'package:proyect02/pages/cat_mx/sports/sports_b_mx.dart';
import 'package:proyect02/pages/cat_mx/sports/sports_c_mx.dart';
import 'package:proyect02/pages/cat_mx/top/mx_top.dart';
import 'package:proyect02/pages/cat_mx/top/top_a_mx.dart';
import 'package:proyect02/pages/cat_mx/top/top_b_mx.dart';
import 'package:proyect02/pages/cat_mx/top/top_c_mx.dart';
import 'package:proyect02/pages/home_page.dart';
import 'package:proyect02/services/mx_services_enter.dart';
import 'package:proyect02/services/mx_services_politics.dart';
import '../barra.dart';
import '../services/mx_services_sports.dart';
import '../services/mx_services_top.dart';

class HomeMx extends StatelessWidget {
  const HomeMx({Key? key}) : super(key: key);

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
  /*
  String leerImagen(String page) {
    String pagina = page;
    String buscar = '';
    String complemento = 'https:';
    for (int i = 0; i < 6; i++) {
      buscar += pagina[i];
    }
    if (buscar != 'https:') {
      pagina = complemento + page;
    }
    return pagina;
  }
  */

  @override
  Widget build(BuildContext context) {
    final mxDataTop = Provider.of<MxServicesTop>(context);
    final mxDataPolitics = Provider.of<MxServicesPolitics>(context);
    final mxDataEntertainment = Provider.of<MxServicesEnter>(context);
    final mxDataSports = Provider.of<MxServicesSports>(context);

    if (mxDataTop.propertyMxTop.isEmpty) {
      return Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: const Center(
            child:
                CircularProgressIndicator(color: Color.fromARGB(255, 0, 0, 0))),
      );
    }
    if (mxDataPolitics.propertyMxPolitics.isEmpty) {
      return Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: const Center(
            child:
                CircularProgressIndicator(color: Color.fromARGB(255, 0, 0, 0))),
      );
    }
    if (mxDataEntertainment.propertyMxEnter.isEmpty) {
      return Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: const Center(
            child:
                CircularProgressIndicator(color: Color.fromARGB(255, 0, 0, 0))),
      );
    }
    if (mxDataSports.propertyMxSports.isEmpty) {
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
                SizedBox(width: 55),
                Text('México',
                    style: TextStyle(
                        fontFamily: 'LibreBodoni_Italic',
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                SizedBox(width: 15),
                Image(
                  image: AssetImage('assets/mexicobandera.jpg'),
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
                                  builder: (context) => const MxTop(),
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
                                        builder: (context) => const TopAMx(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(mxDataTop
                                            .propertyMxTop[1].imageUrl),
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
                                        builder: (context) => const TopBMx(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(mxDataTop
                                            .propertyMxTop[2].imageUrl),
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
                                        builder: (context) => const TopCMx(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(mxDataTop
                                            .propertyMxTop[3].imageUrl),
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
                                  builder: (context) => const MxPolitics(),
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
                                            const PoliticsAMx(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(mxDataPolitics
                                            .propertyMxPolitics[1].imageUrl),
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
                                            const PoliticsBMx(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(mxDataPolitics
                                            .propertyMxPolitics[2].imageUrl),
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
                                            const PoliticsCMx(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(mxDataPolitics
                                            .propertyMxPolitics[3].imageUrl),
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
                                  builder: (context) => const MxEnter(),
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
                                        builder: (context) => const EnterAMx(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(mxDataEntertainment
                                            .propertyMxEnter[1].imageUrl),
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
                                        builder: (context) => const EnterBMx(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(mxDataEntertainment
                                            .propertyMxEnter[2].imageUrl),
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
                                        builder: (context) => const EnterCMx(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(mxDataEntertainment
                                            .propertyMxEnter[3].imageUrl),
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
                                  builder: (context) => const MxSports(),
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
                                        builder: (context) => const SportsAMx(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(mxDataSports
                                            .propertyMxSports[1].imageUrl),
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
                                        builder: (context) => const SportsBMx(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(mxDataSports
                                            .propertyMxSports[2].imageUrl),
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
                                        builder: (context) => const SportsCMx(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(mxDataSports
                                            .propertyMxSports[3].imageUrl),
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
