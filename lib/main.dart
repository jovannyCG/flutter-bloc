import 'package:flutter/material.dart';
import 'package:flutter_bloc/pages/page1.dart';
import 'package:flutter_bloc/pages/page2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'pagina1',
      routes: {
        'pagina1':(_)=>PaginaPage(),
        'pagina2':(_)=>Pagina2Page(),
      },
    );
  }
}
