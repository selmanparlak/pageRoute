import 'package:flutter/material.dart';
import 'package:page_route_transition/page_b.dart';

class PageA extends StatefulWidget {
  const PageA({Key? key}) : super(key: key);

  @override
  State<PageA> createState() => _PageAState();
}

class _PageAState extends State<PageA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("PAGE A"),centerTitle: true,),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context) => const PageB()));

            }, child: const Text("B")),
          ],
        ),
      ),

    );
  }
}
