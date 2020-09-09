import 'dart:html';

import 'package:FlutterLojaVirtual/app/constants.dart';
import 'package:flutter/material.dart';

class FiltroHome extends StatefulWidget {
  @override
  _FiltroHomeState createState() => _FiltroHomeState();
}

class _FiltroHomeState extends State<FiltroHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: kShadowColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 100, left: 8.0, right: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: new BoxConstraints(
                minWidth: 100,
                maxWidth: 800,
              ),
              child: TextField(
                onChanged: (_) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Search....  "),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Categorias',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            ConstrainedBox(
              constraints: new BoxConstraints(
                minWidth: 100,
                maxWidth: 800,
                minHeight: 50,
                maxHeight: 50,
              ),
              child: Expanded(
                  child: Container(
                alignment: Alignment.center,
                color: Colors.blue,
                child: Align(
                  alignment: Alignment.center,
                  child: Center(

                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'UF',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 20,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'UF2',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
