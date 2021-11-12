import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mbti_suggest/pages/analysts_page.dart';
import 'package:mbti_suggest/pages/diplomats_page.dart';
import 'package:mbti_suggest/pages/explorers_page.dart';
import 'package:mbti_suggest/pages/sentinels_page.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        /*appBar: AppBar(
          title: Text('16 Personalitie MBTI'),
        ),*/
        body: Container(
          //color: Colors.amberAccent.shade100,
          decoration: const BoxDecoration(
            image: const DecorationImage(
                image: const AssetImage("assets/images/bg11.png"),
                fit: BoxFit.fill),
          ),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Hello',
                      style: GoogleFonts.merriweather(fontSize: 40.0),
                    ),
                    Text(
                      'Welcome to MBTI suggest',
                      style: GoogleFonts.merriweather(fontSize: 20.0),
                    ),
                    Text(
                      'This application will introduce you to know about MBTI',
                      style: GoogleFonts.merriweather(fontSize: 15.0),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          image: AssetImage('assets/images/mbti7.png'),
                          width: 400.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            //image: DecorationImage(
                            //   image: AssetImage("assets/images/bg_green.jpg"),
                            //   fit: BoxFit.cover,),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13)),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'What is MBTI?',
                                style: GoogleFonts.merriweather(fontSize: 20.0),
                              ),
                              Text(
                                'MBTI หมายถึง ศาสตร์ที่มุ่งเน้นให้ตัวเราเข้าใจตัวเองและผู้อื่นจากประเภทของบุคลิกภาพที่ต่างกัน',
                                style: GoogleFonts.prompt(fontSize: 13.0),
                              ),
                              Text(
                                'ด้วยชุดความถนัดของบุคลิกภาพ 4 ชุด ได้แก่ ',
                                style: GoogleFonts.prompt(fontSize: 13.0),
                              ),
                              Text(
                                '1. Introvert - Extrovert',
                                style: GoogleFonts.prompt(fontSize: 13.0),
                              ),
                              Text(
                                '2. Sensing - iNtuition',
                                style: GoogleFonts.prompt(fontSize: 13.0),
                              ),
                              Text(
                                '3. Feeling - Thinking',
                                style: GoogleFonts.prompt(fontSize: 13.0),
                              ),
                              Text(
                                '4. Judging - Prospect',
                                style: GoogleFonts.prompt(fontSize: 13.0),
                              ),
                              Text(
                                'เมื่อทำแบบทดสอบเสร็จจะได้ตัวอักษรมา 4 ตัว ซึ่งกำหนดเป็นตัวละครที่เป็นเอกลักษณ์ของตัวเอง ทำให้เราได้มา 16 ตัวละครที่นิสัยแตกต่างกัน',
                                style: GoogleFonts.prompt(fontSize: 13.0),
                              ),
                              /*Text(
                                'ทำให้เราได้มา 16 ตัวละครที่นิสัยแตกต่างกัน ',
                                style: GoogleFonts.prompt(fontSize: 15.0),
                              ),*/
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.pushReplacementNamed(
                                  context, AnalystsPage.routeName);
                            });
                          },
                          child: Container(
                            width: 140.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: Colors.deepPurple.shade200,
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Center(
                                child: Text('ANALYSTS',
                                    style: GoogleFonts.merriweather(
                                        fontSize: 15.0))),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.pushReplacementNamed(
                                  context, DiplomatsPage.routeName);
                            });
                          },
                          child: Container(
                            width: 140.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: Colors.green.shade200,
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Center(
                                child: Text('DIPLOMATS',
                                    style: GoogleFonts.merriweather(
                                        fontSize: 15.0))),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.pushReplacementNamed(
                                  context, SentinelsPage.routeName);
                            });
                          },
                          child: Container(
                            width: 140.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade100,
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Center(
                                child: Text('SENTINELS',
                                    style: GoogleFonts.merriweather(
                                        fontSize: 15.0))),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.pushReplacementNamed(
                                  context, ExplorersPage.routeName);
                            });
                          },
                          child: Container(
                            width: 140.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: Colors.amber.shade200,
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Center(
                                child: Text('EXPLORERS',
                                    style: GoogleFonts.merriweather(
                                        fontSize: 15.0))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
