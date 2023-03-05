import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavBarDesktop extends StatelessWidget {
  const NavBarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () => context.go("/"),
        icon: const Icon(Icons.home_rounded),
      ),
      actions: [
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
    );
  }
}
