import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyect02/barra.dart';
import 'package:proyect02/pages/cat_mx/sports/sports_a_mx.dart';
import 'package:proyect02/pages/cat_mx/sports/sports_b_mx.dart';
import 'package:proyect02/pages/cat_mx/sports/sports_c_mx.dart';
import 'package:proyect02/pages/cat_mx/sports/sports_d_mx.dart';
import 'package:proyect02/pages/cat_mx/sports/sports_e_mx.dart';
import 'package:proyect02/pages/cat_mx/sports/sports_f_mx.dart';
import 'package:proyect02/pages/home_page.dart';
import 'package:proyect02/services/mx_services_sports.dart';

class MxSports extends StatelessWidget {
  const MxSports({Key? key}) : super(key: key);

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
    final mxDataSports = Provider.of<MxServicesSports>(context);

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
            title: Row(
              children: const [
                SizedBox(width: 60),
                Text('Deportes',
                    style: TextStyle(
                        fontFamily: 'LibreBodoni_Italic',
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                SizedBox(width: 5),
                Icon(
                  Icons.sports_baseball,
                  color: Colors.black,
                  size: 30,
                )
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
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SportsAMx(),
                          ));
                        },
                        child: Container(
                          height: 150,
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
                              Row(
                                children: [
                                  const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 120,
                                        width: 180,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          child: Image.network(
                                            leerImagen(mxDataSports
                                                .propertyMxSports[1].imageUrl),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 5),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 76,
                                        width: 140,
                                        child: Text(
                                          mxDataSports
                                              .propertyMxSports[1].title,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              color:
                                                  Color.fromARGB(235, 0, 0, 0),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Contrail_One'),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      SizedBox(
                                        height: 18,
                                        width: 140,
                                        child: Text(
                                          mxDataSports
                                              .propertyMxSports[1].pubDate,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              color:
                                                  Color.fromARGB(235, 0, 0, 0),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Contrail_One'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      ////////////////////////////////////////////////
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SportsBMx(),
                          ));
                        },
                        child: Container(
                          height: 150,
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
                              Row(
                                children: [
                                  const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 120,
                                        width: 180,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          child: Image.network(
                                            leerImagen(mxDataSports
                                                .propertyMxSports[2].imageUrl),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 5),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 76,
                                        width: 140,
                                        child: Text(
                                          mxDataSports
                                              .propertyMxSports[2].title,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              color:
                                                  Color.fromARGB(235, 0, 0, 0),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Contrail_One'),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      SizedBox(
                                        height: 18,
                                        width: 140,
                                        child: Text(
                                          mxDataSports
                                              .propertyMxSports[2].pubDate,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              color:
                                                  Color.fromARGB(235, 0, 0, 0),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Contrail_One'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      ////////////////////////////////////////////////
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SportsCMx(),
                          ));
                        },
                        child: Container(
                          height: 150,
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
                              Row(
                                children: [
                                  const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 120,
                                        width: 180,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          child: Image.network(
                                            leerImagen(mxDataSports
                                                .propertyMxSports[3].imageUrl),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 5),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 76,
                                        width: 140,
                                        child: Text(
                                          mxDataSports
                                              .propertyMxSports[3].title,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              color:
                                                  Color.fromARGB(235, 0, 0, 0),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Contrail_One'),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      SizedBox(
                                        height: 18,
                                        width: 140,
                                        child: Text(
                                          mxDataSports
                                              .propertyMxSports[3].pubDate,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              color:
                                                  Color.fromARGB(235, 0, 0, 0),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Contrail_One'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      ////////////////////////////////////////////////
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SportsDMx(),
                          ));
                        },
                        child: Container(
                          height: 150,
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
                              Row(
                                children: [
                                  const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 120,
                                        width: 180,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          child: Image.network(
                                            leerImagen(mxDataSports
                                                .propertyMxSports[4].imageUrl),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 5),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 76,
                                        width: 140,
                                        child: Text(
                                          mxDataSports
                                              .propertyMxSports[4].title,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              color:
                                                  Color.fromARGB(235, 0, 0, 0),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Contrail_One'),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      SizedBox(
                                        height: 18,
                                        width: 140,
                                        child: Text(
                                          mxDataSports
                                              .propertyMxSports[4].pubDate,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              color:
                                                  Color.fromARGB(235, 0, 0, 0),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Contrail_One'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      ////////////////////////////////////////////////
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SportsEMx(),
                          ));
                        },
                        child: Container(
                          height: 150,
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
                              Row(
                                children: [
                                  const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 120,
                                        width: 180,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          child: Image.network(
                                            leerImagen(mxDataSports
                                                .propertyMxSports[5].imageUrl),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 5),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 76,
                                        width: 140,
                                        child: Text(
                                          mxDataSports
                                              .propertyMxSports[5].title,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              color:
                                                  Color.fromARGB(235, 0, 0, 0),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Contrail_One'),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      SizedBox(
                                        height: 18,
                                        width: 140,
                                        child: Text(
                                          mxDataSports
                                              .propertyMxSports[5].pubDate,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              color:
                                                  Color.fromARGB(235, 0, 0, 0),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Contrail_One'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      ////////////////////////////////////////////////
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SportsFMx(),
                          ));
                        },
                        child: Container(
                          height: 150,
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
                              Row(
                                children: [
                                  const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 120,
                                        width: 180,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          child: Image.network(
                                            leerImagen(mxDataSports
                                                .propertyMxSports[6].imageUrl),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 5),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 76,
                                        width: 140,
                                        child: Text(
                                          mxDataSports
                                              .propertyMxSports[6].title,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              color:
                                                  Color.fromARGB(235, 0, 0, 0),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Contrail_One'),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      SizedBox(
                                        height: 18,
                                        width: 140,
                                        child: Text(
                                          mxDataSports
                                              .propertyMxSports[6].pubDate,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              color:
                                                  Color.fromARGB(235, 0, 0, 0),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Contrail_One'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
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
