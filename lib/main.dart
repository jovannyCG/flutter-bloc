import 'package:flutter/material.dart';
import 'package:flutter_bloc_app/pages/page1.dart';
import 'package:flutter_bloc_app/pages/page2.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      initialRoute: 'pagina1',
      // routes: {
      //  'pagina1':(_)=>const PaginaPage(),
      //  'pagina2':(_)=>const Pagina2Page(),
      // },
      getPages: [
        GetPage(name: '/pagina1', page: () => const PaginaPage()),
        GetPage(name: '/pagina2', page: () => const Pagina2Page()),
      ],
    );
  }
}
