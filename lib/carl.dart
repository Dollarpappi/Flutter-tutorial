import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Carltextfield extends StatelessWidget {
  const Carltextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TEXT FIELD"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            
            
                
                
                
              
          
            
            Row(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    label: const Text("input name"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                    filled: true,
                    fillColor: (Colors.blueGrey),
                    prefixIcon: const Icon(Icons.edit)
                  ),

                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                label: const Text("input grade"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                filled: true,
                fillColor: Colors.grey,
                prefixIcon: const Icon(Icons.edit),
              ),
            )
          ],
        )
      ,
      ),
    );
  }
}
