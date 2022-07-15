import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
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
