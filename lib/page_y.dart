
import 'package:flutter/material.dart';
import 'package:page_route_transition/MyHomePage.dart';

class PageY extends StatefulWidget {
  const PageY({Key? key}) : super(key: key);

  @override
  State<PageY> createState() => _PageYState();
}

class _PageYState extends State<PageY> {
  Future<bool>main(BuildContext context) async
  {
    bool stat= Navigator.of(context).popUntil((route) => route.isFirst) as bool;
    return stat;
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: const Text("PAGE Y"),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.of(context).popUntil((route) => route.isFirst);
        }, icon: const Icon(Icons.arrow_back)),
      ),
      body: WillPopScope(onWillPop: ()=>main(context),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              Image.network('https://media.giphy.com/media/TPJAvvWbSN61O/giphy.gif'),
             // ElevatedButton(onPressed: (){
             //   setState(() {
             //     Navigator.of(context).popUntil((route) => route.isFirst);
             //   });
             // }, child: const Text("Home")),
            ],
          ),
        ),
      ),

    );
  }
}
