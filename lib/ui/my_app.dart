import 'package:bpbd/data/api_accessor.dart';
import 'package:bpbd/data/api_accessor_news.dart';
import 'package:bpbd/helper/color_pallete.dart';
import 'package:bpbd/injection.dart';
import 'package:bpbd/provider/home/home_bloc.dart';
import 'package:bpbd/provider/landing/landing_bloc.dart';
import 'package:bpbd/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';

@injectable
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => ApiAccessor.create(),
          dispose: (_, ApiAccessor service) => service.client.dispose(),
        ),
        Provider(
          create: (_) => ApiAccessorNews.create(),
          dispose: (_, ApiAccessorNews service) => service.client.dispose(),
        ),
        BlocProvider<LandingBloc>(
          create: (context) => getIt<LandingBloc>(),
        ),
        BlocProvider<HomeBloc>(
          create: (context) => getIt<HomeBloc>()..add(HomeEvent.watch(context)),
        ),
        // BlocProvider<CbrAndRbrBloc>(
        //   create: (context) => getIt<CbrAndRbrBloc>(),
        // ),
        // BlocProvider<DiseaseBloc>(
        //   create: (context) => getIt<DiseaseBloc>()..add(DiseaseEvent.watchAll(context)),
        // ),
        // BlocProvider<ArticleBloc>(
        //   create: (context) =>
        //   getIt<ArticleBloc>()..add(ArticleEvent.watch(context))
        // ),
      ],
      child: GetMaterialApp(
        navigatorKey: Get.key,
        debugShowCheckedModeBanner: false,
        color: ColorPalette.generalBackgroundColor,
        title: 'BPBD',
        initialRoute: Routes.navigator,
        getPages: Routes.newRoutes,
        theme: ThemeData(
          primaryColor: ColorPalette.generalPrimaryColor,
          backgroundColor: ColorPalette.generalBackgroundColor,
          fontFamily: 'Poppins',
        ),
      ),
    );
  }
}
