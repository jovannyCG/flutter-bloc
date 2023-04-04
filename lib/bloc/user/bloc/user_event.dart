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