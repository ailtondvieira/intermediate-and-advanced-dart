import 'package:flutter/material.dart';
import 'package:inherited_widget/inheriteds/inherited_date.dart';

import 'card_weather_home.dart';
import 'container_lamp_home.dart';
import 'container_player_home.dart';
import 'list_text_horizontal.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final String dateTemp = InheritedDate.of(context)!.dateTemp;
    // final double size = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const CardHeaderHome(),
          const SizedBox(height: 40),
          const ListTextHorizontal(),
          Wrap(
            children: const [
              ContainerLampHome(
                nome: 'Lamp',
                icone: Icons.light,
                colorBack: Color.fromARGB(192, 99, 167, 196),
                isOpen: true,
                iconeCircle: Icons.circle,
                colorIcon: Colors.white,
                colorTitle: Colors.white,
                colorBool: Colors.white,
              ),
              ContainerLampHome(
                nome: "Router",
                icone: Icons.router_outlined,
                colorBack: Colors.white,
                isOpen: false,
                iconeCircle: Icons.circle,
                colorIcon: Colors.black,
                colorTitle: Colors.black,
                colorBool: Colors.black,
              ),
              ContainerLampHome(
                nome: "Air",
                icone: Icons.air,
                colorBack: Colors.white,
                isOpen: false,
                iconeCircle: Icons.circle,
                colorIcon: Colors.black,
                colorTitle: Colors.black,
                colorBool: Colors.black,
              ),
              ContainerLampHome(
                nome: "Fridge",
                icone: Icons.kitchen_outlined,
                colorBack: Colors.white,
                isOpen: false,
                iconeCircle: Icons.circle,
                colorIcon: Colors.black,
                colorTitle: Colors.black,
                colorBool: Colors.black,
              ),
            ],
          ),
          const SizedBox(height: 30),
          const SizedBox(height: 40),
          const ContainerPlayerHome(),
          const SizedBox(height: 25)
        ],
      ),
    );
  }
}
