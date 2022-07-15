import 'package:flutter/material.dart';

class LectureSchedule extends StatelessWidget {
  const LectureSchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> lectureNameList = [
      "エレクトロニクス基礎",
      " ",
      " 情報技術概論",
      "教職概論(教職)",
      "えいごいっぱい",
      "化学基礎",
      "スポーツ総合2",
      "情報技術概論",
      "なんかいっぱい",
      "線形代数学I",
      "生物学入門",
      "微分積分学II",
      "地域課題プロジェクト",
      "情報学",
      "データ活用基礎",
      "キャリア形成A2",
      "言語リテラシー2",
      "地域課題プロジェクト",
      "えいごいっぱい",
      " ",
      "物理学基礎",
      " ",
      "特別支援教育学",
      "微分積分学I",
      " "
    ];
    final List<String> roomList = [
      "B101",
      " ",
      "B101, G201, G202, ZOOM",
      "B204",
      "どっか",
      "B201",
      "C111(体育館)",
      "B101, G201, G202, ZOOM",
      "どっか",
      "B204",
      "B204",
      "B101",
      "H101, ZOOM",
      "B102",
      "G201, G202",
      "B101, H101",
      "B204",
      "H101, ZOOM",
      "どっか",
      " ",
      "オンデマンド",
      " ",
      "B203",
      "B201",
      " "
    ];
    final List<String> teacherList = [
      "山中",
      " ",
      "小松川、砂原、丸太、木滑",
      "宮嶋",
      "いっぱい",
      "高田",
      "今野",
      "小松川、砂原、丸太、木滑",
      "いっぱい",
      "藤井",
      "井手、木村、平井",
      "山中、本多",
      "石田、磯部、山下、川名",
      "萩原、石田、高野(泰)、山川",
      "山中、本多",
      "石田",
      "山中、山下",
      "石田、磯部、山下、川名",
      "いっぱい",
      " ",
      "福田(誠)",
      " ",
      "飯塚、藤根、荒木",
      "藤井",
      " ",
    ];
    final List<int> lectureTypeList = [
      1,
      0,
      1,
      0,
      0,
      0,
      0,
      1,
      0,
      1,
      0,
      1,
      1,
      0,
      1,
      1,
      1,
      1,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    ];
    return lectureSchedule(
        context, lectureNameList, roomList, teacherList, lectureTypeList);
  }

  Widget lectureSchedule(context, List? lectureNameList, List? roomList,
      List? teacherList, List? lectureTypeList) {
    return Container(
      child: DataTable(
        columns: [
          DataColumn(
            label: Text('   '),
          ),
          DataColumn(
            label: Text('月'),
          ),
          DataColumn(
            label: Text('火'),
          ),
          DataColumn(label: Text('水')),
          DataColumn(label: Text('木')),
          DataColumn(label: Text('金'))
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(Text('1')),
              for (int i = 0; i < 5; i++)
                DataCell(lectureContent(context, lectureNameList![i],
                    roomList![i], teacherList![i], lectureTypeList![i]))
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('2')),
              for (int i = 5; i < 10; i++)
                DataCell(lectureContent(context, lectureNameList![i],
                    roomList![i], teacherList![i], lectureTypeList![i]))
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('3')),
              for (int i = 10; i < 15; i++)
                DataCell(lectureContent(context, lectureNameList![i],
                    roomList![i], teacherList![i], lectureTypeList![i]))
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('4')),
              for (int i = 15; i < 20; i++)
                DataCell(lectureContent(context, lectureNameList![i],
                    roomList![i], teacherList![i], lectureTypeList![i]))
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('5')),
              for (int i = 20; i < 25; i++)
                DataCell(lectureContent(context, lectureNameList![i],
                    roomList![i], teacherList![i], lectureTypeList![i]))
            ],
          ),
        ],
      ),
    );
  }

  Widget lectureContent(context, String? lectureName, String? room,
      String? teacher, int? lectureType) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
                title: Text("$lectureName"),
                content: Text(
                  '担当教員:' +
                      "$teacher" +
                      '\n'
                          '使用教室:' +
                      "$room",
                )));
      },
      child: Card(
        color: (lectureType == 1)
            ? Color.fromARGB(255, 69, 120, 161)
            : Colors.white,
        child: Text("$lectureName"),
      ),
    );
  }
}
