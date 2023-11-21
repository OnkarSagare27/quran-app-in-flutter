import 'package:flutter/material.dart';

class CardData {
  final String ayahind;
  final String surahind;
  final String ayah;

  CardData({
    required this.ayahind,
    required this.surahind,
    required this.ayah,
  });

  factory CardData.fromJson(Map<String, dynamic> json) {
    return CardData(
      ayahind: json['ayahind'],
      surahind: json['surahind'],
      ayah: json['ayah'],
    );
  }
}

List<CardData> parseCardDataList(List<dynamic> jsonData) {
  return jsonData.map((json) => CardData.fromJson(json)).toList();
}

class bookmarks extends StatelessWidget {
  final List<CardData> cardDataList = parseCardDataList(jsonData);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 235,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
            height: 35,
            child: const Text(
              'Bookmarks',
              style: TextStyle(
                color: Color.fromARGB(255, 131, 125, 125),
                fontSize: 15,
                fontFamily: 'Days',
              ),
            ),
          ),
          Container(
            height: 200,
            child: ScrollConfiguration(
              behavior: const ScrollBehavior().copyWith(overscroll: false),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cardDataList.length,
                itemBuilder: (context, index) {
                  final cardData = cardDataList[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 238, 235, 235),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                            child: Center(
                              child: Text(
                                'Surah ' +
                                    cardData.surahind +
                                    ', Ayah ' +
                                    cardData.ayahind,
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 131, 125, 125),
                                  fontSize: 9,
                                  fontFamily: 'Days',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                bottom: 15, left: 15, right: 15),
                            child: Text(
                              cardData.ayah,
                              textDirection: TextDirection.rtl,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 131, 125, 125),
                                fontFamily: 'Days',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<dynamic> jsonData = [
  {
    "ayahind": "2",
    "surahind": "2",
    "ayah": "ذَٰلِكَ ٱلْكِتَـٰبُ لَا رَيْبَ ۛ فِيهِ ۛ هُدًۭى لِّلْمُتَّقِينَ"
  },
  {
    "ayahind": "5",
    "surahind": "2",
    "ayah":
        "أُو۟لَـٰٓئِكَ عَلَىٰ هُدًۭى مِّن رَّبِّهِمْ ۖ وَأُو۟لَـٰٓئِكَ هُمُ ٱلْمُفْلِحُونَ"
  },
  {
    "ayahind": "2",
    "surahind": "6",
    "ayah":
        "هُوَ ٱلَّذِى خَلَقَكُم مِّن طِينٍۢ ثُمَّ قَضَىٰٓ أَجَلًۭا ۖ وَأتُمْ تَمْتَر"
  },
  {
    "ayahind": "8",
    "surahind": "8",
    "ayah":
        "لِيُحِقَّ ٱلْحَقَّ وَيُبْطِلَ ٱلْبَـٰطِلَ وَلَوْ كَرِهَ ٱلْمُجْرِمُونَ"
  },
  {
    "ayahind": "8",
    "surahind": "10",
    "ayah": "أُو۟لَـٰٓئِكَ مَأْوَىٰهُمُ ٱلنَّارُ بِمَا كَانُوا۟ يَكْسِبُونَ"
  }
];
