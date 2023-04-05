import 'package:flutter/material.dart';
import 'package:flutter_bloc_app/controllers/usuario_controller.dart';
import 'package:flutter_bloc_app/models/usuario.dart';
import 'package:get/get.dart';



class Pagina1Page extends StatelessWidget {
  const Pagina1Page({super.key});


  @override
  Widget build(BuildContext context) {

    final usuarioCtrl = Get.put( UsuarioController() );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 1'),
      ),
      body: Obx( 
        () => usuarioCtrl.existeUsuario.value 
              ? InformacionUsuario( usuario: usuarioCtrl.usuario.value )
              : const NoInfo()
      ),

     floatingActionButton: FloatingActionButton(
       child: const Icon( Icons.accessibility_new ),
      //  onPressed: () => Navigator.pushNamed(context, 'pagina2')
       onPressed: () => Get.toNamed('pagina2', arguments: {
         'nombre':'Fernando',
         'edad': 35
       })
     ),
   );
  }
}


class NoInfo extends StatelessWidget {
  const NoInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No hay usuario seleccionado'),
    );
  }
}


class InformacionUsuario extends StatelessWidget {

  final Usuario usuario;

  const InformacionUsuario({
    Key? key,
    required this.usuario
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const Text('General', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold ) ),
          const Divider(),

          ListTile( title: Text('Nombre: ${ usuario.nombre }') ),
          ListTile( title: Text('Edad: ${ usuario.edad }') ),

          const Text('Profesiones', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold ) ),
          const Divider(),

          ...usuario.profesiones.map((profesion) => ListTile(
            title: Text( profesion ),
          ))

          // ListTile( title: Text('Profesion 1') ),
          // ListTile( title: Text('Profesion 1') ),
          // ListTile( title: Text('Profesion 1') ),

        ],
      ),
    );
  }

}