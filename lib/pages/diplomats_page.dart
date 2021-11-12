import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mbti_suggest/models/mbti_item.dart';

import 'home_page.dart';
class DiplomatsPage extends StatefulWidget {
  static const routeName = '/diploments_page';
  const DiplomatsPage({Key? key}) : super(key: key);

  @override
  _DiplomatsPageState createState() => _DiplomatsPageState();
}

class _DiplomatsPageState extends State<DiplomatsPage> {
  var mbti_items = [
    mbtiItem(
        character: 'ผู้แนะนำ (Advocate)',
        mbti: 'INFJ',
        meaning: 'เป็นคนเงียบๆ และดูลึกลับ แต่มักสร้างแรงบันดาลใจและยึดมั่นในอุดมการณ์อย่างไม่เหน็ดเหนื่อย',
        image: 'INFJ.png',
        job: 'เหมาะกับเสมียน นักจิตวิทยา จิตแพทย์ นักดนตรี นักเขียน'),
    mbtiItem(
        character: 'ผู้ไกล่เกลี่ย (Mediator)',
        mbti: 'INFP',
        meaning: 'นักกวี ใจดี และเห็นใจผู้อื่น มีความกระตือรือร้นที่จะช่วยเหลือเพื่อสร้างสิ่งดีๆ ให้กับสังคม',
        image: 'INFP.png',
        job: 'เหมาะกับครู นักดนตรี นักแสดง นักแปล นักวิจัยทางวิทยาศาสตร์'),
    mbtiItem(
        character: 'ตัวเอก (Protagonist)',
        mbti: 'ENFJ',
        meaning: 'มีเสน่ห์ และเป็นผู้นำที่มักสร้างแรงบันดาลใจ สามารถจับใจผู้ฟังได้เสมอ',
        image: 'ENFJ.png',
        job: 'เหมาะกับนักจิตวิทยา นักการเมือง นักการทูต ผู้ให้คำปรึกษา นักเขียน'),
    mbtiItem(
        character: 'นักรณรงค์ (Campaigner)',
        mbti: 'ENFP',
        meaning:
        'มีความกระตือรือร้น มีความคิดสร้างสรรค์และมีมนุษยสัมพันธ์ที่ดี เป็นคนที่สามารถหาเหตุผลให้ยิ้มได้เสมอ',
        image: 'ENFP.png',
        job: 'เหมาะกับนักลงทุน นักจิตวิทยา นักเขียน นักหนังสือพิมพ์ วิศวกร'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dioplomats',style: GoogleFonts.merriweather(fontSize: 25.0,color: Colors.white)),
        backgroundColor: Colors.green.shade300,
      ),
      body: Container(
        color: Colors.green.shade50,
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('assets/images/ana.png'),
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
                                      style: GoogleFonts.merriweather(fontSize: 18.0,color: Colors.green),
                                    ),
                                    //Text(' : '),
                                    Text(
                                      item.meaning,
                                      style: GoogleFonts.merriweather(fontSize: 15.0),
                                    ),Text(
                                      item.job,
                                      style: GoogleFonts.merriweather(fontSize: 13.0,color: Colors.green),
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
                      primary: Colors.green.shade300,
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
