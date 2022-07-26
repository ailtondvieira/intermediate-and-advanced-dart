
import 'package:flutter/material.dart';

import '../../core/app_assets.dart';
import '../nexter_page/nexter_pager.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical (top: Radius.circular(12))),
        backgroundColor: const Color.fromARGB(192, 99, 167, 196),
        title: const Text("Clouds"),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 25,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const NexterPage();
                    },
                  ),
                );
              },
              icon: const Icon(
                Icons.arrow_forward,
                size: 25,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
      children: [
          Image.asset(
            weather,
            opacity: const AlwaysStoppedAnimation <double>(0.2),
            ),
          const Positioned(
            top: 250,
            child: Text (
              "O tempo está úmido",
              style: TextStyle (
                fontSize: 20,
                fontFamily: "Lora",
              ),
            ),
          )
        ],
      ),
    );
  }
}
