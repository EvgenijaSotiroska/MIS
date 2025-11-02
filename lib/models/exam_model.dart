class Exam{
  String name;
  DateTime dateTime;
  List<String> rooms;

  Exam({required this.name, required this.dateTime, required this.rooms});

  Exam.fromJson(Map<String, dynamic> exams)
  : name = exams['name'],
    dateTime = exams['datetime'],
    rooms = exams['rooms'];

}