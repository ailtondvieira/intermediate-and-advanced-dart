import 'package:flutter/material.dart';

import '../next_page/next_page.dart';
import 'widgets/body_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical (top: Radius.circular(12))),
        backgroundColor: const Color.fromARGB(192, 99, 167, 196),
        title: const Text("Clouds"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const NextPage();
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
      body: const BodyHome(),
    );
  }
}

