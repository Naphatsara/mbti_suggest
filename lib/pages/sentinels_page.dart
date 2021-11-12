import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mbti_suggest/models/mbti_item.dart';

import 'home_page.dart';
class SentinelsPage extends StatefulWidget {
  static const routeName = '/sentinels_page';
  const SentinelsPage({Key? key}) : super(key: key);

  @override
  _SentinelsPageState createState() => _SentinelsPageState();
}

class _SentinelsPageState extends State<SentinelsPage> {
  var mbti_items = [
    mbtiItem(
        character: 'นักคำนวณ (Logistician)',
        mbti: 'ISTJ',
        meaning: 'อยู่กับความเป็นจริง และเป็นคนชอบเสาะหาข้อเท็จจริง ไม่ยอมให้มีข้อสงสัยเหลืออยู่',
        image: 'ISTJ.png',
        job: 'เหมาะกับนักบัญชี นักธุรกิจ นักกฎหมาย ผู้พิพากษา นักเศรษฐศาสตร์'),
    mbtiItem(
        character: 'ผู้ตั้งรับ (Defender)',
        mbti: 'ISFJ',
        meaning: 'มีความละเอียดอ่อน และเป็นผู้ปกป้องที่ดี มักพร้อมที่จะปกป้องคนที่รักเสมอ',
        image: 'ISFJ.png',
      job: 'เหมาะกับผู้นำทหาร ผู้จัดการ นักสืบ ผู้บัญชาการตำรวจ นักตกแต่งภายใน'),
    mbtiItem(
        character: 'ผู้บริหาร (Executive)',
        mbti: 'ESTJ',
        meaning: 'เป็นนักบริหารที่ดี มีความโดดเด่นเรื่องการบริหารเรื่องต่างๆ หรือบุคคลากร',
        image: 'ESTJ.png',
        job: 'เหมาะกับนักลงทุน ตำรวจที่ทำงานศูนย์บัญชาการ ตำรวจสืบสวน นักกีฬา นักแสดง'),
    mbtiItem(
        character: 'ผู้ให้คำปรึกษา (Consul)',
        mbti: 'ESFJ',
        meaning:
        'มีความเป็นห่วงเป็นใบมากเป็นพิเศษ มีมนุษยสัมพันธ์และเป็นที่รักของผู้คน มักกระตือรือร้นเสนอความช่วยเหลือผู้อื่น',
        image: 'ESFJ.png',
        job: 'เหมาะกับพยาบาล เลขานุการ นักกายภาพบำบัด ผู้ทำงานด้านศาสนา ผู้ทำงานธนาคาร'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sentinels',style: GoogleFonts.merriweather(fontSize: 25.0,color: Colors.white)),
        backgroundColor: Colors.blue.shade300,
      ),
      body: Container(
        color: Colors.blue.shade50,
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('assets/images/sen.png'),
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
                                      style: GoogleFonts.merriweather(fontSize: 18.0,color: Colors.cyan),
                                    ),
                                    //Text(' : '),
                                    Text(
                                      item.meaning,
                                      style: GoogleFonts.merriweather(fontSize: 15.0),
                                    ),Text(
                                      item.job,
                                      style: GoogleFonts.merriweather(fontSize: 13.0,color: Colors.cyan),
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
                      primary: Colors.blue.shade300,
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
