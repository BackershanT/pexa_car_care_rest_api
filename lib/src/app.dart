import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pexa_car_care_rest_api/src/core/theme/theme.dart';
import 'package:pexa_car_care_rest_api/src/presentation/home/home_screen.dart';

import 'applications/post_bloc.dart';
import 'infrastructure/services/api_services.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      BlocProvider(
        create: (context) => PostBloc(ApiService()),
        child: ScreenUtilInit(
            designSize: Size(1080, 2340),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (_, child) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                themeMode: ThemeMode.system,
                darkTheme: darkMode,
                theme: lightMode,
                home: HomeScreen(),
              );
            }));
  }
}
