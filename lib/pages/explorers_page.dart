import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mbti_suggest/models/mbti_item.dart';

import 'home_page.dart';
class ExplorersPage extends StatefulWidget {
  static const routeName = '/explorers_page';
  const ExplorersPage({Key? key}) : super(key: key);

  @override
  _ExplorersPageState createState() => _ExplorersPageState();
}

class _ExplorersPageState extends State<ExplorersPage> {
  var mbti_items = [
    mbtiItem(
        character: 'ผู้เชี่ยวชาญด้านศิลปะ (Virtuoso)',
        mbti: 'ISTP',
        meaning: 'กล้าหาญ และเป็นนักทดลองที่อยู่บนพื้นฐานของความเป็นจริง เก่งกาจในเรื่องการใช้เครื่องมือทุกชนิด',
        image: 'ISTP.png',
        job: 'เหมาะกับช่างฝีมือ ช่างก่อสร้าง ช่างเครื่องยนต์ ผู้รักษาความปลอดภัย นักสถิติ'),
    mbtiItem(
        character: 'นักผจญภัย (Adventurer)',
        mbti: 'ISFP',
        meaning: 'มีความยืดหยุ่นสูง และเป็นศิลปินทรงเสน่ห์ มักพร้อมสำรวจและทดลองสิ่งใหม่ๆ อยู่เสมอ',
        image: 'ISFP.png',
        job: 'เหมาะกับนักดนตรี ศิลปิน บรรณารักษ์ นักสังคมสงเคราะห์ ผู้แต่งเพลง นักเขียน'),
    mbtiItem(
        character: 'ผู้ประกอบการ (Entrepreneur)',
        mbti: 'ESTP',
        meaning: 'ฉลาด กระฉับกระเฉง และเข้าใจผู้อื่นได้เป็นอย่างดี มีความสุขกับการใช้ชีวิตแบบสุดโต่ง',
        image: 'ESTP.png',
    job: 'เหมาะกับตำรวจ โปรแกรมเมอร์ ผู้ประพันธ์เพลง นักบิน นักกีฬา ศิลปิน นักลงทุน'),
    mbtiItem(
        character: 'ผู้มอบความบันเทิง (Entertainer)',
        mbti: 'ESFP',
        meaning:
        'ใช้สัญชาตญาณ กระฉับกระเฉงและกระตือรือร้น ไม่มีความเบื่อหน่ายเกิดขึ้นในชีวิต',
        image: 'ESFP.png',
    job: 'เหมาะกับครูอนุบาล ครูประถม นักสังคมสงเคราะห์ ผู้แต่งเพลง นักเขียน'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explorers',style: GoogleFonts.merriweather(fontSize: 25.0,color: Colors.white)),
        backgroundColor: Colors.yellow.shade700,
      ),
      body: Container(
        color: Colors.yellow.shade50,
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('assets/images/exp.png'),
            ),

            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(8.0),
                itemCount: mbti_items.length,
                itemBuilder: (BuildContext context, int index) {
                  var item = mbti_items[index];
                  return Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    margin: EdgeInsets.all(8.0),
                    elevation: 5.0,
                    shadowColor: Colors.black.withOpacity(0.2),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/${item.image}',
                          width: 130.0,
                          height: 130.0,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  item.character,
                                  style: GoogleFonts.prompt(fontSize: 23.0),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item.mbti,
                                      style: GoogleFonts.merriweather(fontSize: 18.0,color: Colors.amber),
                                    ),
                                    //Text(' : '),
                                    Text(
                                      item.meaning,
                                      style: GoogleFonts.merriweather(fontSize: 15.0),
                                    ),Text(
                                      item.job,
                                      style: GoogleFonts.merriweather(fontSize: 13.0,color: Colors.amber),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                setState(() {
                  Navigator.pushReplacementNamed(
                      context, HomePage.routeName);
                });
              },
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(200.0, 50.0),
                      primary: Colors.yellow.shade700,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)
                      )
                  ),
                  child: Text('Back to home page',style: GoogleFonts.merriweather(fontSize: 15.0,color: Colors.white))),
            )
          ],
        ),
      ),
    );
  }
}
