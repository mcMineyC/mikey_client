import "package:flutter/material.dart";

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [Container(color: Colors.red, child: Text("Settings"))],
            ),
          ),
          Expanded(
            child: Column(
              children: [Expanded(child: Container(color: Colors.amber))],
            ),
          ),
        ],
      ),
    );
  }
}
