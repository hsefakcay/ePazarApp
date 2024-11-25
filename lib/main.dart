import 'package:e_pazar_app/core/constants/color.dart';
import 'package:e_pazar_app/ui/cubit/cart_page_cubit.dart';
import 'package:e_pazar_app/ui/cubit/home_page_cubit.dart';
import 'package:e_pazar_app/ui/view/main_tab_page/main_tab_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      statusBarColor: Colors.transparent,
    ));
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomePageCubit(),
        ),
        BlocProvider(
          create: (context) => CartPageCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E-PAZAR',
        theme: ThemeData.light(
          useMaterial3: true,
        ).copyWith(
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.primaryColor,
              foregroundColor: AppColor.whiteColor,
              iconColor: AppColor.whiteColor,
            )),
            appBarTheme: AppBarTheme(
              surfaceTintColor: AppColor.whiteColor,
              backgroundColor: AppColor.whiteColor,
              centerTitle: true,
              systemOverlayStyle: SystemUiOverlayStyle.dark,
            )),
        home: const MainPage(),
      ),
    );
  }
}
