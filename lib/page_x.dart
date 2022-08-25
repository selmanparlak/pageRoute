import 'package:flutter/material.dart';
import 'package:page_route_transition/page_y.dart';

class PageX extends StatefulWidget {
  const PageX({Key? key}) : super(key: key);

  @override
  State<PageX> createState() => _PageXState();
}

class _PageXState extends State<PageX> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(title: const Text("PAGE X"),centerTitle: true,),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const PageY()));
            },  child: const Text("Y")),
          ],
        ),
      ),

    );
  }
}
