import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kimit_tours/cubit/app_states.dart';

class TripDetailsCubit extends Cubit<AppStates> {
  TripDetailsCubit() : super(AppInitialState());

  static TripDetailsCubit get(context) => BlocProvider.of(context);

  ScrollController scrollController = ScrollController();

  void initScroll() {
    scrollController = ScrollController();
    emit(BookingScrollState());
  }

  onBook() {
    emit(GoBookState());
  }
}
