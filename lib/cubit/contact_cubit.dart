import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kimit_tours/models/contact_model.dart';
import 'package:kimit_tours/shared/constants.dart';

import 'app_states.dart';

class ContactCubit extends Cubit<AppStates> {
  ContactCubit() : super(AppInitialState());

  static ContactCubit get(context) => BlocProvider.of(context);

  void sendFeedback({required String email, required String subject, required String description}) {}
}
