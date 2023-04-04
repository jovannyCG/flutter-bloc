part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}
class ActivateUserEvent extends UserEvent{
    final User user;
    ActivateUserEvent(this.user);
  }
class ChangeAge extends UserEvent{
  final int age;

  ChangeAge(this.age);
}

class AddProfesion extends UserEvent{
  final String profs;

  AddProfesion(this.profs);
}