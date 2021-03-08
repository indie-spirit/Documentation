import 'package:flutter/material.dart';

// import 'CustomWidget/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Indie Shop"),
        actions: [
          TextButton(
            onPressed: () {},
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
      ),
    );
  }
}
