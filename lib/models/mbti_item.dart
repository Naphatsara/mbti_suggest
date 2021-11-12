class mbtiItem {
  final String character; //final ทำให้ไม่สามรถแก้ไขค่า อ่านได้อย่างเดียว
  final String mbti;
  final String meaning;
  final String image;
  final String job;

  mbtiItem({
    required this.character,
    required this.mbti,
    required this.meaning,
    required this.image,
    required this.job
    ,

});
  @override
  String toString() {
    return 'character: $character, mbti: $mbti, meaning: $meaning, job: $job';
  }

}