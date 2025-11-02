import 'package:flutter/material.dart';
import 'package:labaratoriska_1/screens/details.dart';
import 'package:labaratoriska_1/screens/home.dart';

import 'models/exam_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laboratory exercise 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: "/",
     onGenerateRoute: (settings){
        if(settings.name == "/"){
          return MaterialPageRoute(builder: (context) => const MyHomePage(title: "Exams Schedule"));
        }
        else if(settings.name == "/details"){
          final exam = settings.arguments as Exam;
          return MaterialPageRoute(builder: (context) => DetailsPage(exam: exam));
        }
     },
    );
  }
}

