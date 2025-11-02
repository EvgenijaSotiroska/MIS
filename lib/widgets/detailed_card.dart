

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/exam_model.dart';

class DetailedCard extends StatefulWidget{
  final Exam exam;
  
  const DetailedCard({super.key, required this.exam});
  
  @override
  State<StatefulWidget> createState() => _DetailedCardState();
}

class _DetailedCardState extends State<DetailedCard>{

  String getTimeLeft() {
    final now = DateTime.now();
    final examDate = widget.exam.dateTime;
    if (examDate.isBefore(now)) {
      return "This exam is over.";
    }
    final difference = examDate.difference(now);
    final days = difference.inDays;
    final hours = difference.inHours % 24;
    return "Exam is in: $days days, $hours hours";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: Colors.purpleAccent, width: 2),
        ),
        elevation: 5,
        child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(widget.exam.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                SizedBox(height: 15,),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Icon(Icons.access_time, size: 20, color: Colors.purpleAccent),
                  SizedBox(width: 10),
                  Text("${widget.exam.dateTime.day}/${widget.exam.dateTime.month}/${widget.exam.dateTime.year} "
                      "at ${widget.exam.dateTime.hour.toString().padLeft(2,'0')}:${widget.exam.dateTime.minute.toString().padLeft(2,'0')}"
                    , style: TextStyle(fontSize: 20),)
                ]),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Icon(Icons.meeting_room, size: 20, color: Colors.purpleAccent),
                      SizedBox(width: 10),
                      Text(
                        widget.exam.rooms.join(', '),
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Row(mainAxisAlignment: MainAxisAlignment.start,children: [
                  Text("${getTimeLeft()}",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),),
                  ]
                )
              ],
            )),
      ),
    );
  }
  
}