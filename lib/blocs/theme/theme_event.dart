part of 'theme_bloc.dart';

@immutable
abstract class ThemeEvent {}

class ChangeThemeEvent extends ThemeEvent {
  final int randomInt;

  ChangeThemeEvent(this.randomInt);

  @override
  List<Object> get props => [randomInt];

  @override
  String toString() {
    return 'ChangeThemeEvent{randomInt: $randomInt}';
  }
}
