part of 'theme_cubit.dart';

class ThemeCubitState {
  final AppTheme appTheme;

  ThemeCubitState({this.appTheme = AppTheme.light});

  factory ThemeCubitState.initial() {
    return ThemeCubitState();
  }

  @override
  String toString() {
    return 'ThemeState{appTheme: $appTheme}';
  }

  @override
  List<Object> get props => [appTheme];

  ThemeCubitState copyWith({
    AppTheme? appTheme,
  }) {
    return ThemeCubitState(
      appTheme: appTheme ?? this.appTheme,
    );
  }
}
