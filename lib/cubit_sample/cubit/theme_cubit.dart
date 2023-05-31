import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../blocs/theme/theme_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeCubitState> {
  ThemeCubit() : super(ThemeCubitState.initial());

  void changeTheme(int randInt) {
    print(randInt);
    if(randInt %2 == 0) {
      emit(state.copyWith(appTheme: AppTheme.light));
    } else {
      emit(state.copyWith(appTheme: AppTheme.dark));
    }
  }
}
