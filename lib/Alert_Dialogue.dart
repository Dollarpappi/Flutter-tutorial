import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NotiDialogue extends StatefulWidget {
  const NotiDialogue({super.key});

  @override
  State<NotiDialogue> createState() => _NotiDialogueState();
}

class _NotiDialogueState extends State<NotiDialogue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ALERT BOX"),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            exitApp(context);
          },
          color: Colors.amber,
          child: const Text("Tap TO Exit "),
        ),
      ),
    );
  }

  exitApp(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      title: const Text("Exist APP"),
      content: const Text(
        "Do you want to leave the app",
        textAlign: TextAlign.center,
      ),
      actions: [
        MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.amber,
          child: const Text("Cancel"),
        ),
        MaterialButton(
          onPressed: () {},
          color: Colors.green,
          child: const Text("EXIT"),
        )
      ],
    );
    showDialog(

        /// it makes the dialogue show
        // barrierDismissible: false
        context: context,
        builder: (context) => alertDialog);
  }
}
