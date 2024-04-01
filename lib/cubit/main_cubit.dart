import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/app_states.dart';

class MainCubit extends Cubit<AppStates> {
  MainCubit() : super(AppInitialState());

  static MainCubit get(context) => BlocProvider.of(context);

  bool isDark = false;

  // String scaffoldImg = 'assets/images/white_scaffold.jpg';

  themeToggle() {
    isDark = !isDark;
    emit(ThemeModeChange());
  }

  // scaffoldChange() {
  //   if (isDark) {
  //     scaffoldImg = 'assets/images/dark_scaffold.jpg';
  //   } else {
  //     scaffoldImg = 'assets/images/white_scaffold.jpg';
  //   }
  // }
}
