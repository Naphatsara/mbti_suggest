import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mbti_suggest/models/mbti_item.dart';
import 'package:mbti_suggest/pages/home_page.dart';

class AnalystsPage extends StatefulWidget {
  static const routeName = '/analysts_page';

  const AnalystsPage({Key? key}) : super(key: key);

  @override
  _AnalystsPageState createState() => _AnalystsPageState();
}

class _AnalystsPageState extends State<AnalystsPage> {
  var mbti_items = [
    mbtiItem(
        character: 'นักออกแบบ (Architect)',
        mbti: 'INTJ',
        meaning: 'จินตนาการสูง และเป็นนักคิดกลยุทธ์ที่มีแผนการสำหรับทุกอย่าง',
        image: 'INTJ.png',
        job: 'เหมาะกับนักวิทยาศาสตร์ นักคณิตศาสตร์ อาจารย์มหาวิทยาลัย วิศวกร แพทย์ '),
    mbtiItem(
        character: 'นักตรรกะ (Logician)',
        mbti: 'INTP',
        meaning: 'นักคิดค้นนวัตกรรมที่มีความกระหายความรู้อย่างไม่มีที่สิ้นสุด',
        image: 'INTP.png',
        job: 'เหมาะกับสถาปนิก แพทย์ นักเคมี นักคอมพิวเตอร์ วิศวกรออกแบบและพัฒนา'),
    mbtiItem(
        character: 'ผู้บัญชาการ (Commander)',
        mbti: 'ENTJ',
        meaning: 'กล้าหาญ มีจิตนาการ และเป็นผู้นำ มักหาทางออกหรือสร้างทางออกขึ้นมาได้เสมอ',
        image: 'ENTJ.jpg',
        job: 'เหมาะกับนักบริหารในองค์กร นักวิทยาศาสตร์ โปรแกรมเมอร์ นักกฎหมาย ผู้พิพากษา'),
    mbtiItem(
        character: 'นักโต้วาที (Debater)',
        mbti: 'ENTP',
        meaning: 'ฉลาด และเป็นนักคิดช่างสงสัย',
        image: 'ENTP.png',
        job: 'เหมาะกับโปรแกรมเมอร์ นักออกแบบซอฟต์แวร์ ช่างภาพ นักแสดง ตัวแทนฝ่ายขาย'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Analysts',style: GoogleFonts.merriweather(fontSize: 25.0,color: Colors.white)),
        backgroundColor: Colors.purple.shade300,
      ),
      body: Container(
        color: Colors.purple.shade50,
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('assets/images/dip.png'),
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
                                      style: GoogleFonts.merriweather(fontSize: 18.0,color: Colors.purple),
                                    ),
                                    //Text(' : '),
                                    Text(
                                      item.meaning,
                                      style: GoogleFonts.merriweather(fontSize: 15.0),
                                    ),Text(
                                      item.job,
                                      style: GoogleFonts.merriweather(fontSize: 13.0,color: Colors.purple),
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
                      primary: Colors.purple.shade300,
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
