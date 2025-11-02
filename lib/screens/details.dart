

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:labaratoriska_1/widgets/detailed_card.dart';

import '../models/exam_model.dart';

class DetailsPage extends StatefulWidget{
  final Exam exam;

  const DetailsPage({super.key, required this.exam});

  @override
  State<StatefulWidget> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Exam Schedule - 221062")
      ),
      body: Padding(
          padding: EdgeInsets.all(16),
          child: DetailedCard(exam: widget.exam),
      ),
    );
  }

}