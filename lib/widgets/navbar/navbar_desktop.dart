import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavBarDesktop extends StatelessWidget {
  const NavBarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Row(
        children: [
          TextButton(
            onPressed: () => context.go("/work"),
            child: const Text("Work"),
          ),
          TextButton(
            onPressed: () => context.go("/about"),
            child: const Text("About"),
          ),
          TextButton(
            onPressed: () => context.go("/contact"),
            child: const Text("Contact"),
          ),
        ],
      ),
    );
  }
}
