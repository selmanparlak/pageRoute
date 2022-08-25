import 'package:flutter/material.dart';
import 'package:page_route_transition/page_y.dart';

class PageB extends StatefulWidget {
  const PageB({Key? key}) : super(key: key);

  @override
  State<PageB> createState() => _PageBState();
}

class _PageBState extends State<PageB> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(title: const Text("PAGE B"),centerTitle: true,),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => const PageY()));
            }, child: const Text("Y")),
          ],
        ),
      ),

    );
  }
}
