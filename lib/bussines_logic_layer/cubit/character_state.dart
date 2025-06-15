part of 'character_cubit.dart';

@immutable
sealed class CharacterState {}

final class CharacterInitial extends CharacterState {}

final class CharacterLodded extends CharacterState {}

final class CharacterError extends CharacterState {}
