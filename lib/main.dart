import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app/bloc/user/bloc/user_bloc.dart';
import 'package:flutter_bloc_app/pages/page1.dart';
import 'package:flutter_bloc_app/pages/page2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => UserBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'pagina1',
        routes: {
          'pagina1':(_)=>const PaginaPage(),
          'pagina2':(_)=>const Pagina2Page(),
        },
      ),
    );
  }
}
