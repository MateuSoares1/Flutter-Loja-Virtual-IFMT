import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DetalheLogin extends StatelessWidget {
  const DetalheLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.center;
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 50
                : 80;
        double detalheSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 16
                : 21;
        return Container(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Text(
                  "ELETRO.\nThe Store",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      height: 0.9,
                      fontSize: titleSize),
                  textAlign: textAlignment,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Text(
                  "Maior Loja Vitural de Equipamentos Eletrônicos ",
                  style: TextStyle(fontSize: detalheSize, height: 1.7),
                  textAlign: textAlignment,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
