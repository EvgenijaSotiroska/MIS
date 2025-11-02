

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:labaratoriska_1/widgets/exam_card.dart';
import 'package:labaratoriska_1/widgets/exam_grid.dart';

import '../models/exam_model.dart';
import '../widgets/total_exams.dart';

class MyHomePage extends StatefulWidget{
    const MyHomePage({super.key, required this.title});

    final String title;

    @override
    State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  final List<Exam> exams = [
    Exam(name: "Mathematics", dateTime: DateTime(2025, 12, 10, 9, 0), rooms: ["Room 101"]),
    Exam(name: "Physics", dateTime: DateTime(2025, 12, 11, 14, 0), rooms: ["Room 202", "Room 203", "Room 405"]),
    Exam(name: "Advanced programming", dateTime: DateTime(2025, 11, 12, 11, 30), rooms: ["Room 303",  "Room 203", "Room 405", "Room 119"]),
    Exam(name: "Programming 1", dateTime: DateTime(2025, 11, 13, 10, 0), rooms: ["Room 104"]),
    Exam(name: "Data Structures", dateTime: DateTime(2025, 11, 14, 13, 0), rooms: ["Room 105", "Room 203", "Room 405"]),
    Exam(name: "Algorithms", dateTime: DateTime(2025, 12, 15, 9, 0), rooms: ["Room 106", "Room 203", "Room 405"]),
    Exam(name: "Databases", dateTime: DateTime(2025, 11, 4, 12, 0), rooms: ["Room 107"]),
    Exam(name: "Computer Networks", dateTime: DateTime(2025, 11, 1, 14, 0), rooms: ["Room 108"]),
    Exam(name: "Operating Systems", dateTime: DateTime(2025, 11, 18, 10, 30), rooms: ["Room 109", "Room 201"]),
    Exam(name: "Software Engineering", dateTime: DateTime(2025, 11, 5, 9, 0), rooms: ["Room 110"]),
  ];

  @override
  void initState() {
    super.initState();
    exams.sort((a, b) => a.dateTime.compareTo(b.dateTime));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Exam Schedule - 221062"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child:  ListView(
          children: [
            ExamGrid(exams: exams),
            TotalExams(exams: exams)
          ],
        )
      )
    );
  }
}