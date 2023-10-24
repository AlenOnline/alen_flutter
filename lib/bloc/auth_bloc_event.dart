part of 'auth_bloc_bloc.dart';

@immutable
abstract class AuthBlocEvent {}

class GetAuthEvent extends AuthBlocEvent {
  final String login;
  final String email;
  GetAuthEvent(this.login, this.email);
}