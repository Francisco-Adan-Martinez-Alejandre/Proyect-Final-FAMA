import 'package:flutter/material.dart';
import 'package:proyect02/pages/home_ar.dart';
import 'package:proyect02/pages/home_co.dart';
import 'package:proyect02/pages/home_mx.dart';
import 'package:proyect02/pages/home_us.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/inicio2.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  const Text(
                    "NEWS WORLD",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 50,
                        fontFamily: 'LibreBodoni_Italic'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Información a tu alcance",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 25,
                        fontFamily: 'Jura'),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                      child: Image.asset(
                    'assets/mundo.png',
                    width: 250,
                  )),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Selecciona el País - Select the country",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontFamily: 'Contrail_One'),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 190,
                    width: 320,
                    child: ListView(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const HomeMx(),
                            ));
                          },
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                            child: Text(
                              'México',
                              style: TextStyle(
                                color: Color.fromARGB(235, 0, 0, 0),
                                fontSize: 25,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Andika',
                              ),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            primary: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const HomeUs(),
                            ));
                          },
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(65, 10, 65, 10),
                            child: Text(
                              'United States',
                              style: TextStyle(
                                  color: Color.fromARGB(235, 0, 0, 0),
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Andika'),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            primary: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const HomeCo(),
                            ));
                          },
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(65, 10, 65, 10),
                            child: Text(
                              'Colombia',
                              style: TextStyle(
                                  color: Color.fromARGB(235, 0, 0, 0),
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Andika'),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            primary: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const HomeAr(),
                            ));
                          },
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(65, 10, 65, 10),
                            child: Text(
                              'Argentina',
                              style: TextStyle(
                                  color: Color.fromARGB(235, 0, 0, 0),
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Andika'),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            primary: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ))),
    );
  }
}
