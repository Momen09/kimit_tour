abstract class AppStates {}

class AppInitialState extends AppStates {}

class ScaffoldChange extends AppStates {}

class BnbToggleState extends AppStates {}

class ThemeModeChange extends AppStates {}

class BottomShowState extends AppStates {}

class BottomHideState extends AppStates {}

class BarScrollState extends AppStates {}

class BookingScrollState extends AppStates {}

class GoBookState extends AppStates {}

class AppHandleReverseHideBottomWidgetState extends AppStates {}

class AppHandleForwardHideBottomWidgetState extends AppStates {}

class LoginPasswordVisibilityState extends AppStates {}

class RegisterPasswordVisibilityState extends AppStates {}

class RegisterLoadingState extends AppStates {}

class UserRegisterSuccessState extends AppStates {}

class UserRegisterErrorState extends AppStates {}

class CreateUserSuccessState extends AppStates {}

class CreateUserErrorState extends AppStates {}

class LoginSuccessState extends AppStates {}

class LoginErrorState extends AppStates {
  final String error;
  LoginErrorState(this.error);
}

class GetUserLoadState extends AppStates {}

class GetUserSuccessState extends AppStates {}

class GetUserErrorState extends AppStates {
  final String error;
  GetUserErrorState(this.error);
}

class ProfileImagePickSuccessState extends AppStates {}

class ProfileImagePickErrorState extends AppStates {}

class CoverImagePickSuccessState extends AppStates {}

class CoverImagePickErrorState extends AppStates {}

class ProfileImageUploadSuccessState extends AppStates {}

class ProfileImageUploadErrorState extends AppStates {}

class CoverImageUploadSuccessState extends AppStates {}

class CoverImageUploadErrorState extends AppStates {}

class UserUpdateSuccessState extends AppStates {}

class UserUpdateLoadingState extends AppStates {}

class UserUpdateErrorState extends AppStates {}

class FeedbackSuccessState extends AppStates {}

class FeedbackErrorState extends AppStates {}
