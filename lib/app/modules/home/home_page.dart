import 'package:FlutterLojaVirtual/app/modules/home/widgets/filtro_home.dart';
import 'package:FlutterLojaVirtual/app/widgets/body/center_view.dart';
import 'package:FlutterLojaVirtual/app/widgets/footer/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.exit_to_app), onPressed: controller.logout),
        title: Text(widget.title),
      ),
      body: CenterView(
        child: Column(
          children: [
            Expanded(child: FiltroHome()),
            Expanded(
                child: ListView(
              children: [
                Text('data'),
                Text('data'),
              ],
            )),
            Footer(),
          ],
        ),
      ),
    );
  }
}
