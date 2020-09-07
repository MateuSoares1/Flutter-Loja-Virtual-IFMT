import 'package:FlutterLojaVirtual/app/comum/auth/auth_controller.dart';
import 'package:FlutterLojaVirtual/app/comum/auth/repository/auth_repository.dart';
import 'package:FlutterLojaVirtual/app/comum/auth/repository/auth_repository_interface.dart';
import 'package:FlutterLojaVirtual/app/modules/authentication/login/login_module.dart';
import 'package:FlutterLojaVirtual/app/splash/splash_page.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:FlutterLojaVirtual/app/app_widget.dart';
import 'package:FlutterLojaVirtual/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
        Bind<IAuthRepository>((i) => AuthRepository()),
        Bind((i) => AuthController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args)=> SplashPage()),
        ModularRouter('/login', module: LoginModule(), transition: TransitionType.noTransition),
        ModularRouter('/home', module: HomeModule()),
        
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
