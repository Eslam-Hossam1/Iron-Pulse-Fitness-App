part of 'log_in_cubit.dart';

@immutable
sealed class LogInState {}

final class LogInInitial extends LogInState {}

final class LogInInLoading extends LogInState {}

final class LogInInSucsess extends LogInState {}

final class LogInInFailure extends LogInState {}
