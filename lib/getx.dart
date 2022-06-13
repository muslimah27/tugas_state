import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(GetMaterialApp(home: Home()));

class Controller extends GetxController{
  var count = 0.obs;
  increment() => count++;
}

class Home extends StatelessWidget {

  @override
  Widget build(context) {

    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    final Controller c = Get.put(Controller());

    return Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.
      appBar: AppBar(title: Obx(() => Text("Clicks: ${c.count}"))),

      // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
      body: Center(child:
       Row(
         children: [
           ElevatedButton(
                  child: Text("Go to First Page"), onPressed: () => Get.to(FirstPage())),
                  ElevatedButton(
                  child: Text("Go to Second Page"), onPressed: () => Get.to(SecondPage())),
                  ElevatedButton(
                  child: Text("Go to Third Page"), onPressed: () => Get.to(ThirdPage()))
         ],
       )),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: c.increment));
  }
}

class FirstPage extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final Controller c = Get.find();

  @override
  Widget build(context){
     // Access the updated count variable
     return Scaffold(body:
      Column(
        children: [
          Center(child:
           Text("First Page")),

          Center(child:
           Text("${c.count}")),
        ],
      ));
  }
}

class SecondPage extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final Controller c = Get.find();

  @override
  Widget build(context){
     // Access the updated count variable
     return Scaffold(body:
      Column(
        children: [
          Center(child:
           Text("Second Page")),

          Center(child:
           Text("${c.count}")),
        ],
      ));
  }
}

class ThirdPage extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final Controller c = Get.find();

  @override
  Widget build(context){
     // Access the updated count variable
     return Scaffold(body:
      Column(
        children: [
          Center(child:
           Text("Third Page")),

          Center(child:
           Text("${c.count}")),
        ],
      ));
  }
}