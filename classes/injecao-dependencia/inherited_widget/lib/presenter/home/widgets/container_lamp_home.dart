// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ContainerLampHome extends StatelessWidget {
  final String nome;
  final IconData icone;
  final IconData iconeCircle;
  final bool isOpen;
  final Color colorBack;
  final Color colorIcon;
  final Color colorTitle;
  final Color colorBool;

  const ContainerLampHome({
    Key? key,
    required this.nome,
    required this.icone,
    required this.iconeCircle,
    required this.isOpen,
    required this.colorBack,
    required this.colorIcon,
    required this.colorTitle,
    required this.colorBool,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: colorBack,
        borderRadius: BorderRadius.circular(32),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
            spreadRadius: 3,
            offset: Offset(4, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                icone,
                size: 40,
                color: colorIcon,
              ),
               Icon(
                iconeCircle,
                color: colorIcon,
              ),
            ],
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nome,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: colorTitle,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  isOpen ? "ON" : "OFF",
                  style: TextStyle(
                    fontSize: 18,
                    color: colorBool,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
