import 'package:flutter/material.dart';

class CreateDeep extends StatefulWidget {
  const CreateDeep({super.key});

  @override
  State<CreateDeep> createState() => _CreateDeepState();
}

class _CreateDeepState extends State<CreateDeep> {
  GlobalKey<FormState> authKey = GlobalKey<FormState>();
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController gradeCtrl = TextEditingController();
  List<Map> names = [
    {"names": "Carl", "grades": "pass"},
    {"names": "Sean", "grades": "pass"},
    {"names": "Sharon", "grades": "pass"},
  ];
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size; /////// removes the red page
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(
          backgroundColor: Colors.blueAccent,
          child: Icon(Icons.home),
        ),
        title: const Text("list view"),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Form(
          key: authKey,
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap:
                    true, // very important... it renders the amout that can fit a particular screen at the same time
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 70,
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(names[index]["names"].substring(0, 1)),
                      ),
                      title: Text(names[index]["names"]),
                      subtitle: Text(names[index]["grades"]),
                      trailing: IconButton(
                        onPressed: () {
                          names.removeAt(index);
                          setState(() {});
                        },
                        icon: const Icon(Icons.cancel),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: nameCtrl,
                decoration: InputDecoration(
                    label: Text("Name"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: gradeCtrl,
                decoration: InputDecoration(
                    label: Text("Grade"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              SizedBox(
                height: 15,
              ),
              MaterialButton(
                  child: Text("Submit"),
                  onPressed: () {
                    if (authKey.currentState!.validate()) {
                      authKey.currentState!.save();
                      Map<String, dynamic> userdetails = {};
                      userdetails["names"] = nameCtrl.text;
                      userdetails["grades"] = gradeCtrl.text;

                      names.add(userdetails);
                      nameCtrl.clear();
                      gradeCtrl.clear();
                      setState(() {});
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
