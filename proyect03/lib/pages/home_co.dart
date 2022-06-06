import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyect02/pages/cat_co/entertainment/co_enter.dart';
import 'package:proyect02/pages/cat_co/entertainment/enter_a_co.dart';
import 'package:proyect02/pages/cat_co/entertainment/enter_b_co.dart';
import 'package:proyect02/pages/cat_co/entertainment/enter_c_co.dart';
import 'package:proyect02/pages/cat_co/politics/co_politics.dart';
import 'package:proyect02/pages/cat_co/politics/politics_a_co.dart';
import 'package:proyect02/pages/cat_co/politics/politics_b_co.dart';
/*import 'package:proyect02/pages/cat_co/politics/politics_c_co.dart';*/
import 'package:proyect02/pages/cat_co/sports/co_sports.dart';
import 'package:proyect02/pages/cat_co/sports/sports_a_co.dart';
import 'package:proyect02/pages/cat_co/sports/sports_b_co.dart';
import 'package:proyect02/pages/cat_co/sports/sports_c_co.dart';
import 'package:proyect02/pages/cat_co/top/co_top.dart';
import 'package:proyect02/pages/cat_co/top/top_a_co.dart';
import 'package:proyect02/pages/cat_co/top/top_b_co.dart';
import 'package:proyect02/pages/cat_co/top/top_c_co.dart';
import 'package:proyect02/pages/home_page.dart';
import 'package:proyect02/services/co_services_enter.dart';
import 'package:proyect02/services/co_services_politics.dart';
import 'package:proyect02/services/co_services_sports.dart';
import 'package:proyect02/services/co_services_top.dart';
import '../barra.dart';

class HomeCo extends StatelessWidget {
  const HomeCo({Key? key}) : super(key: key);

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
    final coDataTop = Provider.of<CoServicesTop>(context);
    final coDataPolitics = Provider.of<CoServicesPolitics>(context);
    final coDataEntertainment = Provider.of<CoServicesEnter>(context);
    final coDataSports = Provider.of<CoServicesSports>(context);

    if (coDataTop.propertyCoTop.isEmpty) {
      return Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: const Center(
            child:
                CircularProgressIndicator(color: Color.fromARGB(255, 0, 0, 0))),
      );
    }
    if (coDataPolitics.propertyCoPolitics.isEmpty) {
      return Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: const Center(
            child:
                CircularProgressIndicator(color: Color.fromARGB(255, 0, 0, 0))),
      );
    }
    if (coDataEntertainment.propertyCoEnter.isEmpty) {
      return Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: const Center(
            child:
                CircularProgressIndicator(color: Color.fromARGB(255, 0, 0, 0))),
      );
    }
    if (coDataSports.propertyCoSports.isEmpty) {
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
                Text('Colombia',
                    style: TextStyle(
                        fontFamily: 'LibreBodoni_Italic',
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                SizedBox(width: 15),
                Image(
                  image: AssetImage('assets/colombiabandera.png'),
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
                                  builder: (context) => const CoTop(),
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
                                        builder: (context) => const TopACo(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(coDataTop
                                            .propertyCoTop[1].imageUrl),
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
                                        builder: (context) => const TopBCo(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(coDataTop
                                            .propertyCoTop[2].imageUrl),
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
                                        builder: (context) => const TopCCo(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(coDataTop
                                            .propertyCoTop[3].imageUrl),
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
                                  builder: (context) => const CoPolitics(),
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
                                            const PoliticsACo(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(coDataPolitics
                                            .propertyCoPolitics[0].imageUrl),
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
                                            const PoliticsBCo(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(coDataPolitics
                                            .propertyCoPolitics[1].imageUrl),
                                        width: 190,
                                        //height: 10,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  /*InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) =>
                                            const PoliticsCCo(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(coDataPolitics
                                            .propertyCoPolitics[2].imageUrl),
                                        width: 190,
                                        //height: 10,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),*/
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
                                  builder: (context) => const CoEnter(),
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
                                        builder: (context) => const EnterACo(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(coDataEntertainment
                                            .propertyCoEnter[1].imageUrl),
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
                                        builder: (context) => const EnterBCo(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(coDataEntertainment
                                            .propertyCoEnter[2].imageUrl),
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
                                        builder: (context) => const EnterCCo(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(coDataEntertainment
                                            .propertyCoEnter[3].imageUrl),
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
                                  builder: (context) => const CoSports(),
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
                                        builder: (context) => const SportsACo(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(coDataSports
                                            .propertyCoSports[1].imageUrl),
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
                                        builder: (context) => const SportsBCo(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(coDataSports
                                            .propertyCoSports[2].imageUrl),
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
                                        builder: (context) => const SportsCCo(),
                                      ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.network(
                                        leerImagen(coDataSports
                                            .propertyCoSports[3].imageUrl),
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
