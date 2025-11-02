

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/exam_model.dart';

class TotalExams extends StatefulWidget{
  const TotalExams({super.key, required this.exams});

  final List<Exam> exams;

  @override
  State<StatefulWidget> createState() => _TotalExamsState();

}

class _TotalExamsState extends State<TotalExams>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(8),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white60,
          border: Border.all(width: 3, color: Colors.black45),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text("Total amount of exams: ${widget.exams.length}")
      ),
    );
  }
}