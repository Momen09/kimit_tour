import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_states.dart';

class AttractionCubit extends Cubit<AppStates> {
  AttractionCubit() : super(AppInitialState());

  static AttractionCubit get(context) => BlocProvider.of(context);

  void init() {}
}
