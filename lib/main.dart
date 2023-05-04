import 'package:flutter/material.dart';
import 'package:fluttertutorials/Alert_Dialogue.dart';
import 'package:fluttertutorials/Assignmentalertdialogue.dart';
import 'package:fluttertutorials/Bottomnavclass.dart';
import 'package:fluttertutorials/Listview_builder.dart';
import 'package:fluttertutorials/Mylistview.dart';
import 'package:fluttertutorials/Splashscreen.dart';
import 'package:fluttertutorials/assignmentFORM.dart';

import 'package:fluttertutorials/card.dart';
import 'package:fluttertutorials/carousel_class.dart';
import 'package:fluttertutorials/carouselassignment.dart';
import 'package:fluttertutorials/carouselpersonal.dart';
import 'package:fluttertutorials/dashboard.dart';
import 'package:fluttertutorials/form.dart';
import 'package:fluttertutorials/my_card.dart';
import 'package:fluttertutorials/my_form.dart';
import 'package:fluttertutorials/my_form.dart';
import 'package:fluttertutorials/formwork.dart';
import 'package:fluttertutorials/specialform.dart';
import 'package:fluttertutorials/tabbview.dart';
import 'package:fluttertutorials/webviewASSIGNMENT.dart';
import 'package:fluttertutorials/webview_practicals.dart';
import 'package:fluttertutorials/webviewclass.dart';
import 'package:fluttertutorials/webviewprojectassignment.dart';
import 'package:fluttertutorials/work.dart';

import 'AssignmentDROPDOWNBUTTON.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      /// to remove banner
      title: 'Flutter Demo',
      theme: ThemeData(
          //primarySwatch: Colors.green,
          ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("MY APPLICATION"),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              /*MaterialButton(
                  height: 80,
                  minWidth: 80,
                  shape: const StadiumBorder(),
                  color: Colors.white,
                  hoverColor: Colors.blue,
                  hoverElevation: 50,
                  child: const Text("SUBMIT"),
                  onPressed: () {
                    var route = MaterialPageRoute(
                      builder: (context) => const Myownform(),
                    );
                    Navigator.push(context, route);
                  }),
              const SizedBox(
                width: 20,
              ),
              const Text("Previous form"),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                  height: 80,
                  minWidth: 80,
                  shape: const StadiumBorder(),
                  color: Colors.white,
                  hoverColor: const Color.fromARGB(255, 183, 146, 146),
                  highlightColor: const Color.fromARGB(255, 67, 65, 65),
                  hoverElevation: 50,
                  child: const Text("ENTER"),
                  onPressed: () {
                    var route = MaterialPageRoute(
                      builder: (context) => const Special(),
                    );
                    Navigator.push(context, route);
                  }),
              const SizedBox(
                width: 30,
              ),
              const Text("Reserch Form"),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                  color: Colors.white,
                  height: 80,
                  minWidth: 80,
                  elevation: 50,
                  shape: const StadiumBorder(),
                  hoverColor: const Color.fromARGB(255, 95, 39, 58),
                  child: const Text("listview"),
                  onPressed: () {
                    var route = MaterialPageRoute(
                        builder: (context) => const ListViewBuilder());
                    Navigator.push(context, route);
                  }),
              const SizedBox(
                height: 20,
              ),*/
              MaterialButton(
                  color: Colors.white,
                  height: 80,
                  minWidth: 80,
                  elevation: 50,
                  shape: const StadiumBorder(),
                  hoverColor: const Color.fromARGB(255, 95, 39, 58),
                  child: const Text("carousel"),
                  onPressed: () {
                    var route = MaterialPageRoute(
                        builder: (context) => const Ziddidle());
                    Navigator.push(context, route);
                  }),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  MaterialButton(
                      color: Colors.white,
                      height: 80,
                      minWidth: 80,
                      elevation: 50,
                      shape: const StadiumBorder(),
                      hoverColor: const Color.fromARGB(255, 95, 39, 58),
                      child: const Text("BOTTOM NAV"),
                      onPressed: () {
                        var route = MaterialPageRoute(
                            builder: (context) => const BottomnavClass());
                        Navigator.push(context, route);
                      }),
                ],
              ),
              MaterialButton(
                  color: Colors.white,
                  height: 80,
                  minWidth: 80,
                  elevation: 50,
                  shape: const StadiumBorder(),
                  hoverColor: const Color.fromARGB(255, 95, 39, 58),
                  child: const Text("my carousel"),
                  onPressed: () {
                    var route =
                        MaterialPageRoute(builder: (context) => AssignmentCa());
                    Navigator.push(context, route);
                  }),
              SizedBox(
                height: 29,
              ),
              MaterialButton(
                  color: Colors.white,
                  height: 80,
                  minWidth: 80,
                  elevation: 50,
                  shape: const StadiumBorder(),
                  hoverColor: const Color.fromARGB(255, 95, 39, 58),
                  child: const Text("webviewpracticals"),
                  onPressed: () {
                    var route = MaterialPageRoute(
                        builder: (context) => const WebViewpractical());
                    Navigator.push(context, route);
                  }),
              SizedBox(
                height: 29,
              ),
              MaterialButton(
                  color: Colors.white,
                  height: 80,
                  minWidth: 80,
                  elevation: 50,
                  shape: const StadiumBorder(),
                  hoverColor: const Color.fromARGB(255, 95, 39, 58),
                  child: const Text("CAROUSEL CLASS"),
                  onPressed: () {
                    var route = MaterialPageRoute(
                        builder: (context) => const CarouselClass());
                    Navigator.push(context, route);
                  }),
              SizedBox(
                height: 29,
              ),
              SizedBox(
                height: 29,
              ),
              MaterialButton(
                  color: Colors.white,
                  height: 80,
                  minWidth: 80,
                  elevation: 50,
                  shape: const StadiumBorder(),
                  hoverColor: const Color.fromARGB(255, 95, 39, 58),
                  child: const Text("assignment web"),
                  onPressed: () {
                    var route = MaterialPageRoute(
                        builder: (context) => const Assignmentwebview());
                    Navigator.push(context, route);
                  }),
              MaterialButton(
                  color: Colors.white,
                  height: 80,
                  minWidth: 80,
                  elevation: 50,
                  shape: const StadiumBorder(),
                  hoverColor: const Color.fromARGB(255, 95, 39, 58),
                  child: const Text("SPLASH SCREEN"),
                  onPressed: () {
                    var route = MaterialPageRoute(
                        builder: (context) => const SplashWork());
                    Navigator.push(context, route);
                  }),
              SizedBox(
                height: 29,
              ),

              // WEB   VIEW
              /* MaterialButton(
                  color: Colors.white,
                  height: 80,
                  minWidth: 80,
                  elevation: 50,
                  shape: const StadiumBorder(),
                  hoverColor: const Color.fromARGB(255, 95, 39, 58),
                  child: const Text("WEB VIEW"),
                  onPressed: () {
                    var route = MaterialPageRoute(
                        builder: (context) => const WebViewClass());
                    Navigator.push(context, route);
                  }),
              SizedBox(
                height: 29,
              ),
              // WEB   VIEW
              MaterialButton(
                  color: Colors.white,
                  height: 80,
                  minWidth: 80,
                  elevation: 50,
                  shape: const StadiumBorder(),
                  hoverColor: const Color.fromARGB(255, 95, 39, 58),
                  child: const Text("WEB VIEW practicals"),
                  onPressed: () {
                    var route = MaterialPageRoute(
                        builder: (context) => const WebViewpractical());
                    Navigator.push(context, route);
                  }),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                  color: Colors.white,
                  height: 80,
                  minWidth: 80,
                  elevation: 50,
                  shape: const StadiumBorder(),
                  hoverColor: const Color.fromARGB(255, 95, 39, 58),
                  child: const Text("Carousels"),
                  onPressed: () {
                    var route = MaterialPageRoute(
                        builder: (context) => const CarouselClass());
                    Navigator.push(context, route);
                  }),*/
            ],
          ),
        ),
      ),
    );
  }
}





















    /* SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Container(
          child: Column(
            children: [
              // for simple design
              MaterialButton(
                hoverColor: Colors.blueGrey,
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const Assignment(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                shape: const StadiumBorder(), // removes the edges of the botton
                child: const Text("checks"),
              ),
              const SizedBox(
                height: 10,
              ),
              //for blog post
              MaterialButton(
                hoverColor: Colors.blueGrey,
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const BlogPOST(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                shape: const StadiumBorder(), // removes the edges of the botton
                child: const Text("Simple Design"),
              ),
              const SizedBox(
                height: 10,
              ),

              MaterialButton(
                hoverColor: Colors.blueGrey,
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const Forms(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.blue,
                shape: const StadiumBorder(), // removes the edges of the botton
                child: const Text("FORMS"),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/