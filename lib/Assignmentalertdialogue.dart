import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluttertutorials/assignmentFORM.dart';

class Workalert extends StatefulWidget {
  const Workalert({super.key});

  @override
  State<Workalert> createState() => _WorkalertState();
}

class _WorkalertState extends State<Workalert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ALERT DIALOGUE BOX"),
        centerTitle: true,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            exitApp(context);
          },
          elevation: 40,
          color: (Colors.green),
          child: Text("ENTER"),
        ),
      ),
    );
  }

  exitApp(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      shadowColor: Color.fromARGB(255, 113, 50, 50),
      title: Text("Navigate to Form "),
      content: Text(
        "You are about to navigate to FORM",
        textAlign: TextAlign.center,
        overflow: TextOverflow.fade,
      ),
      actions: [
        MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("CANCEL"),
          focusColor: Color.fromARGB(255, 93, 136, 94),
          color: Colors.blue,
        ),
        MaterialButton(
            child: Text("NAVIGATE"),
            color: Colors.red,
            onPressed: () {
              var route =
                  MaterialPageRoute(builder: (context) => const Formswork());
              Navigator.push(context, route);
            })
      ],
    );
    showDialog(context: context, builder: ((context) => alertDialog));
  }
}
