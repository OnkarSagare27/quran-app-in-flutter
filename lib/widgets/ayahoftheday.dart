import 'package:flutter/material.dart';

class AyahOfTheDay extends StatelessWidget {
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
              'Ayah of the day',
              style: TextStyle(
                color: Color.fromARGB(255, 131, 125, 125),
                fontSize: 15,
                fontFamily: 'Days',
              ),
            ),
          ),
          Container(
              // height: 150,
              width: 900,
              padding: EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.all(10),
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
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'هُوَ ٱلَّذِى خَلَقَكُم مِّن طِينٍۢ ثُمَّ قَضَىٰٓ أَجَلًۭا ۖ وَأَجَلٌۭ مُّسَمًّى عِندَهُۥ ۖ ثُمَّ أَنتُمْ تَمْتَرُونَ',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Color.fromARGB(255, 131, 125, 125),
                        fontSize: 15,
                        fontFamily: 'Days',
                      ),
                    ),
                    Text(
                      'Surah 6, Ayah 2',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color.fromARGB(255, 131, 125, 125),
                        fontSize: 10,
                        fontFamily: 'Days',
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
