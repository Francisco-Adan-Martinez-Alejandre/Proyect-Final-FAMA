import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyect02/pages/home_page.dart';
import 'package:proyect02/services/us_services_politics.dart';
import '../../../barra.dart';

class PoliticsBUs extends StatelessWidget {
  const PoliticsBUs({Key? key}) : super(key: key);

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
    final usDataPolitics = Provider.of<UsServicesPolitics>(context);

    if (usDataPolitics.propertyUsPolitics.isEmpty) {
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
                Text('2nd News',
                    style: TextStyle(
                        fontFamily: 'LibreBodoni_Italic',
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                SizedBox(width: 5),
                Icon(
                  Icons.today,
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
                      Container(
                        height: 90,
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
                              width: 10,
                            ),
                            SizedBox(
                              height: 60,
                              width: 330,
                              child: ListView(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        usDataPolitics
                                            .propertyUsPolitics[2].title,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            color: Color.fromARGB(235, 0, 0, 0),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Andika'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      ////////////////////////////////////////////////
                      Container(
                        height: 60,
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
                              height: 10,
                            ),
                            Row(
                              children: [
                                const SizedBox(width: 10),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                      width: 330,
                                      child: Text(
                                        "Author: " +
                                            usDataPolitics
                                                .propertyUsPolitics[2].creator,
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                            color: Color.fromARGB(235, 0, 0, 0),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Jura'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                      width: 330,
                                      child: Text(
                                        "Publication date: " +
                                            usDataPolitics
                                                .propertyUsPolitics[2].pubDate,
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                            color: Color.fromARGB(235, 0, 0, 0),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Jura'),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 10),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      ////////////////////////////////////////////////
                      Container(
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
                              width: 10,
                            ),
                            const Text(
                              "Description",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(235, 0, 0, 0),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Andika'),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              height: 90,
                              width: 330,
                              child: ListView(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        usDataPolitics
                                            .propertyUsPolitics[2].description,
                                        textAlign: TextAlign.justify,
                                        style: const TextStyle(
                                            color: Color.fromARGB(235, 0, 0, 0),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Jura'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      ////////////////////////////////////////////////
                      Container(
                        height: 160,
                        width: 280,
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
                              height: 10,
                            ),
                            Row(
                              children: [
                                const SizedBox(width: 10),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 140,
                                      width: 260,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        child: Image.network(
                                          leerImagen(usDataPolitics
                                              .propertyUsPolitics[2].imageUrl),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 10),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      ////////////////////////////////////////////////
                      Container(
                        height: 300,
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
                              width: 10,
                            ),
                            const Text(
                              "Content",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(235, 0, 0, 0),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Andika'),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              height: 235,
                              width: 330,
                              child: ListView(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        usDataPolitics
                                            .propertyUsPolitics[2].content,
                                        textAlign: TextAlign.justify,
                                        style: const TextStyle(
                                            color: Color.fromARGB(235, 0, 0, 0),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Jura'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  )
                ],
              ))),
    );
  }
}
