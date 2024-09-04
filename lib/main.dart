import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodels/todo_list_viewmodel.dart';
import 'views/todo_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ToDoListViewModel()),
      ],
      child: MaterialApp(
        title: 'To-Do List',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ToDoListPage(),
      ),
    );
  }
}
