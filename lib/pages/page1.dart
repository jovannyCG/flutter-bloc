import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app/bloc/user/bloc/user_bloc.dart';
import 'package:flutter_bloc_app/models/user.dart';

class PaginaPage extends StatelessWidget {
  const PaginaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('pagina 1'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            BlocProvider.of<UserBloc>(context,listen: false).add(DeleteUser());
          }, 
          icon: const Icon(Icons.delete_outline))
        ],
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return state.existUser
              ?  InfotmacionUsuarios(user: state.user!)
              : const Center(
                  child: Text('no hay usuario'),
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pushNamed(context, 'pagina2')),
    );
  }
}

class InfotmacionUsuarios extends StatelessWidget {
  final User user;
  const InfotmacionUsuarios({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsetsDirectional.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'general',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          ListTile(title: Text('nombre: ${user.nombre}')),
          ListTile(
            title: Text('edad: ${user.edad}'),
          ),
          const Text(
            'profesiones',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          ...user.profesiones.map((prof) => ListTile(title: Text(prof))).toList(),
          const ListTile(
            title: Text('preofesion1 '),
          )
        ],
      ),
    );
  }
}
