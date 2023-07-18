import 'package:flutter/material.dart';

class Reciters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
            height: 35,
            child: const Text(
              'Reciters',
              style: TextStyle(
                color: Color.fromARGB(255, 131, 125, 125),
                fontSize: 15,
                fontFamily: 'Days',
              ),
            ),
          ),
          Container(
              width: 900,
              padding: EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 240, 238, 238),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 2),
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 80,
                        child: Column(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                'assets/images/yasser al dosari.jpg',
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: const Text(
                                'Yasser Al Dosari',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'Days',
                                ),
                              ),
                            ),
                          ],
                        )),
                    Container(
                        width: 80,
                        child: Column(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                'assets/images/maher al mueaqly.jpg',
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: const Text(
                                'Maher Al Mueaqly',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'Days',
                                ),
                              ),
                            ),
                          ],
                        )),
                    Container(
                        width: 80,
                        child: Column(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                'assets/images/saad al ghamdi.jpg',
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: const Text(
                                'Saad Al Ghamdi',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'Days',
                                ),
                              ),
                            ),
                          ],
                        )),
                    Container(
                        width: 80,
                        child: Column(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                'assets/images/idris abkar.jpg',
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: const Text(
                                'Idris\nAbkar',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'Days',
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
