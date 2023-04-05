import 'package:flutter/material.dart';
import 'package:flutter_bloc_app/controllers/usuario_controller.dart';
import 'package:flutter_bloc_app/models/usuario.dart';
import 'package:get/get.dart';



class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});


  @override
  Widget build(BuildContext context) {

    // print( Get.arguments['edad'] );
    final usuarioCtrl = Get.find<UsuarioController>();


    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                usuarioCtrl.cargarUsuario( Usuario(nombre: 'Jovannt', edad: 25 ) );
                Get.snackbar(
                  'Usuario establecido', 
                  'Jovanny es el nombre del usuario',
                  backgroundColor: Colors.white,
                  boxShadows: [
                    const BoxShadow(
                      color: Colors.black38,
                      blurRadius: 10
                    )
                  ]
                );
              },
              child: const Text('Establecer Usuario', style: TextStyle( color: Colors.white ) )
            ),

            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                usuarioCtrl.cambiarEdad(25);
              },
              child: const Text('Cambiar Edad', style: TextStyle( color: Colors.white ) )
            ),

            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                // usuarioCtrl.agregarProfesion( 'Profesión #${ usuarioCtrl.usuario.value.profesiones.length + 1 }' );
                usuarioCtrl.agregarProfesion( 'Profesión #${ usuarioCtrl.profesionesCount + 1 }' );
              },
              child: const Text('Añadir Profesion', style: TextStyle( color: Colors.white ) )
            ),

            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                Get.changeTheme( Get.isDarkMode ? ThemeData.light() : ThemeData.dark() );
              },
              child: const Text('Cambair tema', style: TextStyle( color: Colors.white ) )
            ),

          ],
        )
     ),
   );
  }
}