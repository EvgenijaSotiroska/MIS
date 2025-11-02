
import 'package:flutter/cupertino.dart';

import '../models/exam_model.dart';
import 'exam_card.dart';

class ExamGrid extends StatefulWidget{
  final List<Exam> exams;

  const ExamGrid({super.key, required this.exams});

  @override
  State<StatefulWidget> createState() => _ExamGridState();

}

class _ExamGridState extends State<ExamGrid>{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: widget.exams.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: ExamCard(exam: widget.exams[index]),
        );
      },
    );
  }
}