import 'package:FlutterLojaVirtual/app/modules/authentication/login/widgets/detalhe_login.dart';
import 'package:FlutterLojaVirtual/app/widgets/body/center_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizing) => Scaffold(
        drawer: null,        
        body: CenterView(
          child: Row(
            children: [
              Expanded(
                child: DetalheLogin(),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('Login',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,                              
                              fontSize: 50)),
                      RaisedButton(
                        onPressed: controller.loginWithGoogle,
                        child: Text('Google'),
                      ),
                      RaisedButton(
                        onPressed: null,
                        child: Text('Facebook'),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/*


            
*/
