import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() {
  callAPI();
}

class requestData {
  String? content;
  String? date;

  requestData({this.content, this.date});
  Map<String, dynamic> toJson() => {'content': content, 'date': date};
}

Future callAPI() async {
  var url =
      Uri.parse('https://timetable-backend-kn.herokuapp.com/api/v1/get/csv/');

  var request = new requestData(content: "goC.csv", date: "2022-09-04");

  final response =
      await http.post(url, body: json.encode(request.toJson()), headers: {
    'Content-Type': 'application/json',
  });

  if (response.statusCode == 200) {
    Map data = json.decode(response.body);
    print(data);
    return data;
  } else {
    throw Exception('Failed');
  }
}
