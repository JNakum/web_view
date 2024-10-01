import 'package:flutter/material.dart';
import 'package:web_view/view_url.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Webview",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ViewUrl(
                            title: 'PUB DEV',
                            url: 'https://pub.dev/packages/webview_flutter',
                          )));
            },
            child: const Text(
              "Open URL..",
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
