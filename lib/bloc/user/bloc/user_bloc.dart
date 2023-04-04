import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_app/models/user.dart';
import 'package:meta/meta.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitialState()) {
    on<ActivateUserEvent>((event, emit) => emit(UserSetState(event.user)));
    on<ChangeAge>((event, emit) {
      if (!state.existUser) return;

      emit(UserSetState(state.user!.copyWith(edad: event.age)));
    });

    on<AddProfesion>((event, emit) {
      if (!state.existUser) return;
      final profs =[... state.user!.profesiones, event.profs];
      emit(UserSetState(state.user!.copyWith(profesiones:profs)));
    });
  }
}
