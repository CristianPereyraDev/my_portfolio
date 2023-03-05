import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/navbar/navbar_desktop.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Add Key
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: NavBarDesktop(),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              //Add Scroll Controller
              child: Column(
                children: const [Text("Home")],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
