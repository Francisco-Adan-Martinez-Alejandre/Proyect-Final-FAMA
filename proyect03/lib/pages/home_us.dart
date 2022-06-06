import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyect02/pages/cat_us/entertainment/enter_a_us.dart';
import 'package:proyect02/pages/cat_us/entertainment/enter_b_us.dart';
import 'package:proyect02/pages/cat_us/entertainment/enter_c_us.dart';
import 'package:proyect02/pages/cat_us/entertainment/us_enter.dart';
import 'package:proyect02/pages/cat_us/politics/politics_a_us.dart';
import 'package:proyect02/pages/cat_us/politics/politics_b_us.dart';
import 'package:proyect02/pages/cat_us/politics/politics_c_us.dart';
import 'package:proyect02/pages/cat_us/politics/us_politics.dart';
import 'package:proyect02/pages/cat_us/sports/sports_a_us.dart';
import 'package:proyect02/pages/cat_us/sports/sports_b_us.dart';
import 'package:proyect02/pages/cat_us/sports/sports_c_us.dart';
import 'package:proyect02/pages/cat_us/sports/us_sports.dart';
import 'package:proyect02/pages/cat_us/top/top_a_us.dart';
import 'package:proyect02/pages/cat_us/top/top_b_us.dart';
import 'package:proyect02/pages/cat_us/top/top_c_us.dart';
import 'package:proyect02/pages/cat_us/top/us_top.dart';
import 'package:proyect02/pages/home_page.dart';
import 'package:proyect02/services/us_services_enter.dart';
import 'package:proyect02/services/us_services_politics.dart';
import 'package:proyect02/services/us_services_sports.dart';
import 'package:proyect02/services/us_services_top.dart';
import '../barra.dart';

class HomeUs extends StatelessWidget {
  const HomeUs({Key? key}) : super(key: key);

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
    final usDataTop = Provider.of<UsServicesTop>(context);
    final usDataPolitics = Provider.of<UsServicesPolitics>(context);
    final usDataEntertainment = Provider.of<UsServicesEnter>(context);
    final usDataSports = Provider.of<UsServicesSports>(context);

    if (usDataTop.propertyUsTop.isEmpty) {
      return Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: const Center(
            child:
                CircularProgressIndicator(color: Color.fromARGB(255, 0, 0, 0))),
      );
    }
    if (usDataPolitics.propertyUsPolitics.isEmpty) {
      return Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: const Center(
            child:
                CircularProgressIndicator(color: Color.fromARGB(255, 0, 0, 0))),
      );
    }
    if (usDataEntertainment.propertyUsEnter.isEmpty) {
      return Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: const Center(
            child:
                CircularProgressIndicator(color: Color.fromARGB(255, 0, 0, 0))),
      );
    }
    if (usDataSports.propertyUsSports.isEmpty) {
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
                SizedBox(width: 20),
                Text('United States',
                    style: TextStyle(
                        fontFamily: 'LibreBodoni_Italic',
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                SizedBox(width: 15),
                Image(
                  image: AssetImage('assets/usabandera.png'),
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
                                  builder: (context) => const UsTop(),
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
                                        builder: (context) => const TopAUs(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(usDataTop
                                            .propertyUsTop[1].imageUrl),
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
                                        builder: (context) => const TopBUs(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(usDataTop
                                            .propertyUsTop[2].imageUrl),
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
                                        builder: (context) => const TopCUs(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(usDataTop
                                            .propertyUsTop[3].imageUrl),
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
                                  builder: (context) => const UsPolitics(),
                                ));
                              },
                              child: Row(
                                children: const [
                                  SizedBox(width: 20),
                                  Text(
                                    "Politics",
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
                                            const PoliticsAUs(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(usDataPolitics
                                            .propertyUsPolitics[1].imageUrl),
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
                                            const PoliticsBUs(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(usDataPolitics
                                            .propertyUsPolitics[2].imageUrl),
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
                                            const PoliticsCUs(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(usDataPolitics
                                            .propertyUsPolitics[3].imageUrl),
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
                                  builder: (context) => const UsEnter(),
                                ));
                              },
                              child: Row(
                                children: const [
                                  SizedBox(width: 20),
                                  Text(
                                    "Entertainment",
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
                                        builder: (context) => const EnterAUs(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(usDataEntertainment
                                            .propertyUsEnter[1].imageUrl),
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
                                        builder: (context) => const EnterBUs(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(usDataEntertainment
                                            .propertyUsEnter[2].imageUrl),
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
                                        builder: (context) => const EnterCUs(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(usDataEntertainment
                                            .propertyUsEnter[3].imageUrl),
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
                                  builder: (context) => const UsSports(),
                                ));
                              },
                              child: Row(
                                children: const [
                                  SizedBox(width: 20),
                                  Text(
                                    "Sports",
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
                                        builder: (context) => const SportsAUs(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(usDataSports
                                            .propertyUsSports[1].imageUrl),
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
                                        builder: (context) => const SportsBUs(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(usDataSports
                                            .propertyUsSports[2].imageUrl),
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
                                        builder: (context) => const SportsCUs(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(usDataSports
                                            .propertyUsSports[3].imageUrl),
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
