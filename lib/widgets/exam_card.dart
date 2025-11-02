
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/exam_model.dart';



class ExamCard extends StatelessWidget{
  const ExamCard({super.key, required this.exam});

  final Exam exam;

  Color getCardColor() {
    if (exam.dateTime.isBefore(DateTime.now())) {
      return Colors.purple.shade100;
    } else {
      return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {Navigator.pushNamed(context, "/details", arguments: exam);},
      child: Card(
        color: getCardColor(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: Colors.purpleAccent.shade200, width: 3)
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            children: [
              Text(exam.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Icon(Icons.access_time, size: 18, color: Colors.grey),
                SizedBox(width: 4),
                Text("${exam.dateTime.day}/${exam.dateTime.month}/${exam.dateTime.year} "
                    "at ${exam.dateTime.hour.toString().padLeft(2,'0')}:${exam.dateTime.minute.toString().padLeft(2,'0')}"
                  , style: TextStyle(fontSize: 16),)
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.start,children: [
                Icon(Icons.meeting_room, size: 18, color: Colors.grey),
                SizedBox(width: 4),
                Text(exam.rooms.join(', ')),
              ]),
            ],
          ))
      ),
    );
  }
}