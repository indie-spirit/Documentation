import 'package:flutter/material.dart';
import 'package:indie/Auth/login_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Indie Shop"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(LoginScreen.loginRoute);
          },
          child: Text(
            'Sign In',
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.05,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Sign Up',
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.05,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
