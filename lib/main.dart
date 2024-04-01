import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kimit_tours/cubit/attraction_details_cubit.dart';
import 'package:kimit_tours/cubit/trip_details_cubit.dart';
import 'package:kimit_tours/shared/bloc_observer.dart';
import 'package:kimit_tours/shared/styles.dart';
import 'package:kimit_tours/views/attraction_details_screen.dart';
import 'package:kimit_tours/views/chat_bot_screen.dart';
import 'package:kimit_tours/views/contact_screen.dart';
import 'package:kimit_tours/views/edit_profile/edit_profile_screen.dart';
import 'package:kimit_tours/views/explore/explore_screen.dart';
import 'package:kimit_tours/views/login/login_screen.dart';
import 'package:kimit_tours/views/register/register_screen.dart';
import 'package:kimit_tours/views/trip_details_screen.dart';
import 'package:kimit_tours/views/verify_screen.dart';

import '../cubit/app_states.dart';
import '../cubit/home_cubit.dart';
import '../cubit/main_cubit.dart';
import '../views/menu_screen.dart';
import 'network/local/cache_helper.dart';
import 'views/layout/home_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await CacheHelper.init();
  bool isSigned = CacheHelper.getData('signed') ?? false;
  Bloc.observer = MyBlocObserver();
  runApp(MyApp(isSigned));
}

class MyApp extends StatelessWidget {
  final bool isLogin;
  const MyApp(this.isLogin, {super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MainCubit(),
        ),
        BlocProvider(
          create: (context) => HomeCubit()..getUserData(),
        ),
        BlocProvider(
          create: (context) => TripDetailsCubit()..initScroll(),
        ),
        BlocProvider(
          create: (context) => AttractionCubit(),
        ),
      ],
      child: BlocConsumer<MainCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          MainCubit cubit = MainCubit.get(context);
          return MaterialApp(
            routes: {
              '/home_layout': (context) => const HomeLayout(),
              '/attraction_details': (context) => AttractionDetailsScreen(),
              '/menu': (context) => const MenuScreen(),
              '/explore_screen': (context) => const ExploreScreen(),
              '/trip_details_screen': (context) => const TripDetailsScreen(),
              'login_screen': (context) => const LoginScreen(),
              'register_screen': (context) => const RegisterScreen(),
              '/': (context) =>
                  isLogin ? const HomeLayout() : const LoginScreen(),
              '/contact_screen': (context) => const ContactScreen(),
              '/verify_screen': (context) => const VerifyScreen(),
              '/chat_bot': (context) => const ChatPage(),
              'edit_profile_screen': (context) => EditProfileScreen(),
            },
            darkTheme: darkTheme,
            theme: lightTheme,
            themeMode: cubit.isDark ? ThemeMode.dark : ThemeMode.light,
            debugShowCheckedModeBanner: false,
            // home: const HomePage(),
          );
        },
      ),
    );
  }
}
