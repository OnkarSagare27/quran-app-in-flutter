import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Surah {
  final int number;
  final String name;
  final String ayahCount;
  final String engName;

  Surah(
      {required this.number,
      required this.name,
      required this.ayahCount,
      required this.engName});

  factory Surah.fromJson(Map<String, dynamic> json) {
    return Surah(
      number: json['number'],
      name: json['englishName'],
      ayahCount: json['numberOfAyahs'].toString(),
      engName: json['englishNameTranslation'],
    );
  }
}

class ScrollableSurahList extends StatefulWidget {
  @override
  _ScrollableSurahListState createState() => _ScrollableSurahListState();
}

class _ScrollableSurahListState extends State<ScrollableSurahList> {
  late List<Surah> surahList = [];

  @override
  void initState() {
    super.initState();
    fetchSurahList();
  }

  Future<void> fetchSurahList() async {
    final response =
        await http.get(Uri.parse('https://api.alquran.cloud/v1/surah'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final surahs = data['data'] as List<dynamic>;
      setState(() {
        surahList = surahs.map((surah) => Surah.fromJson(surah)).toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return surahList.isEmpty
        ? Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
            ),
          )
        : ListView.builder(
            itemCount: surahList.length,
            itemBuilder: (context, index) {
              final surah = surahList[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListElementContainer(
                    number: surah.number,
                    name: surah.name,
                    text: surah.engName + ", " + surah.ayahCount + " Ayahs"),
              );
            },
          );
  }
}

class ListElementContainer extends StatelessWidget {
  final int number;
  final String name;
  final String text;

  ListElementContainer(
      {required this.number, required this.name, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF175B32), width: 2.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: const Color(0xFF175B32),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Center(
              child: Text(
                number.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  text,
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
